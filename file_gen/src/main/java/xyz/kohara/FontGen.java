package xyz.kohara;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.*;

public class FontGen {

    private final static File FONT_MAPPINGS = new File("font_mappings.txt");

    public static Map<String, String> ITEM_CHAR = new HashMap<>();

    public static void generateMappings(Set<String> ingredients) throws IOException {
        if (!FONT_MAPPINGS.exists()) {
            FONT_MAPPINGS.createNewFile();
        }

        for (String item : ingredients) {
            item = item.replace(".", ":");

            List<String> lines = Files.readAllLines(FONT_MAPPINGS.toPath());
            String finalItem = item;
            boolean exists = lines.stream().anyMatch(line -> line.startsWith(finalItem));
            if (!exists) {
                try (BufferedWriter writer = new BufferedWriter(new FileWriter(FONT_MAPPINGS, true))) {
                    writer.write(item + "->");
                    writer.newLine();
                }
            }
        }
    }

    public static void generateFont() throws IOException {
        FontData fontData = new FontData();

        Path filePath = Paths.get(FONT_MAPPINGS.toString());
        int codePoint = 0x0000;

        for (String line : Files.readAllLines(filePath)) {
            String[] mapping = line.split("->");
            if (mapping.length < 2) continue;

            while (codePoint <= Character.MAX_CODE_POINT) {
                if (!Character.isDefined(codePoint) || Character.isISOControl(codePoint)) {
                    codePoint++;
                    continue;
                }
                break;
            }

            if (codePoint > Character.MAX_CODE_POINT) {
                throw new RuntimeException("Ran out of Unicode characters");
            }

            String character = new String(Character.toChars(codePoint));
            codePoint++;

            fontData.providers.add(new FontData.Provider(mapping[1].trim(), character));
            ITEM_CHAR.put(mapping[0].trim(), character);
        }

        exportFontData(fontData, "aota.json");
    }

    public static void exportFontData(FontData fontData, String outputPath) throws IOException {
        Gson gson = new GsonBuilder().setPrettyPrinting().create();
        File outputFolder = new File(HaruGen.OUTPUT_DIR + "font/");
        if (outputFolder.exists()) outputFolder.delete();
        outputFolder.mkdirs();
        try (FileWriter writer = new FileWriter(outputFolder + "/" + outputPath)) {
            gson.toJson(fontData, writer);
        }
    }

    private static class FontData {
        List<Provider> providers = new ArrayList<>();

        static class Provider {
            String type;
            String file;
            int ascent;
            int height;
            List<String> chars;

            public Provider(String file, String chars) {
                this.type = "bitmap";
                this.file = file;
                this.ascent = 12;
                this.height = 14;
                this.chars = List.of(chars);
            }
        }
    }
}
