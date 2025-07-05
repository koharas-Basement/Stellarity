package xyz.kohara;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.annotations.SerializedName;
import com.google.gson.reflect.TypeToken;
import org.jetbrains.annotations.Nullable;

import java.io.*;
import java.lang.reflect.Type;
import java.nio.file.Files;
import java.util.*;
import java.util.concurrent.atomic.AtomicInteger;

public class AdvancementGen {

    private static final File ADVANCEMENT_FOLDER = new File(HaruGen.OUTPUT_DIR + "advancement/altar_recipe_book/");
    private static final File MODEL_MAPPINGS = new File("model_mappings.txt");

    static {
        if (!MODEL_MAPPINGS.exists()) {
            try {
                MODEL_MAPPINGS.createNewFile();
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
    }

    public static void generateAdvancements() {

        ADVANCEMENT_FOLDER.mkdirs();

        createAdvancementFile("root", rootAdvancement(), null);

        HaruGen.recipes.forEach(stringMapMap -> {
            /// This pretty much parses every recipe map as they all have 1 key
            String category = stringMapMap.keySet().iterator().next();

            File categoryFolder = new File(ADVANCEMENT_FOLDER + "/" + category + "/");
            categoryFolder.mkdirs();

            Map<String, RecipeData> recipeDataMap = stringMapMap.get(category);
            String name = recipeDataMap.keySet().iterator().next();
            RecipeData recipeData = recipeDataMap.get(name);

            // Create the advancement
            AdvancementData.Advancement advancement = new AdvancementData.Advancement();
            AdvancementData.Display display = new AdvancementData.Display();

            display.showToast = false;
            display.announceToChat = false;
            display.hidden = false;

            AdvancementData.Icon icon = new AdvancementData.Icon();
            String id = (recipeData.resultType() == RecipeData.ResultType.FUNCTION) ?
                    recipeData.displayItem().replace(".", ":")
                    : recipeData.result().replace(".", ":");
            if (id.indexOf("stellarity:") == 0) {
                try {
                    List<String> lines = Files.readAllLines(MODEL_MAPPINGS.toPath());
                    String finalId = id;
                    Optional<String> matchingLine = lines.stream()
                            .filter(line -> line.startsWith(finalId))
                            .findFirst();
                    if (matchingLine.isEmpty()) {
                        try (BufferedWriter writer = new BufferedWriter(new FileWriter(MODEL_MAPPINGS, true))) {
                            writer.write(id + "->");
                            writer.newLine();
                            System.out.println("Item " + id + " was added to the list of items requiring a model mapping");
                            return;
                        }
                    } else {
                        String[] modelMapping = matchingLine.get().split("->");
                        id = "minecraft:stick";
                        if (modelMapping.length < 2)
                            throw new RuntimeException("Missing model mapping for entry " + id);
                        icon.components.put("minecraft:item_model", modelMapping[1]);
                    }
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }
            }
            icon.id = id;
            display.icon = icon;

            display.title = List.of(name);
            List<Object> description = new ArrayList<>();
            description.add("\n");
            AtomicInteger i = new AtomicInteger();
            AtomicInteger total = new AtomicInteger();
            boolean subscript = false;
            recipeData.ingredients().forEach((item, amount) -> {
                description.add(Map.of(
                        "text", FontGen.ITEM_CHAR.get(item.replace(".", ":")),
                        "font", "stellarity:aota",
                        "color", "white"
                ));
                if (amount != 1) {
                    description.add(Map.of(
                            "translate", "space.-3",
                            "font", "default"
                    ));
                    description.add(Map.of(
                            "text", (subscript) ? toSubscriptNumbers(amount) : String.valueOf(amount),
                            "color", "white",
                            "font", "default"
                    ));
                } else {
                    description.add(" ");
                }
                total.getAndIncrement();
                i.getAndIncrement();
                if (total.get() != recipeData.ingredients().size()) {
                    description.add(Map.of(
                            "translate", "space.3",
                            "font", "default"
                    ));
                    if (i.get() >= 4) {
                        i.set(0);
                        description.add("\n\n");
                    }
                }
            });
            display.description = description;

            advancement.display = display;
            advancement.parent = "stellarity:altar_recipe_book/root";

            createAdvancementFile(name.replace(" ", "_").toLowerCase(), advancement, category);
        });
    }

    private static void createAdvancementFile(String name, AdvancementData.Advancement advancement, @Nullable String category) {
        Gson gson = new GsonBuilder().disableHtmlEscaping().setPrettyPrinting().create();

        String location = (category == null) ? ADVANCEMENT_FOLDER + "/" + name + ".json" : ADVANCEMENT_FOLDER + "/" + category + "/" + name + ".json";
        try (Writer writer = new BufferedWriter(new FileWriter(location))) {
            gson.toJson(advancement, writer);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private static AdvancementData.Advancement rootAdvancement() {
        AdvancementData.Advancement advancement = new AdvancementData.Advancement();

        AdvancementData.Display display = new AdvancementData.Display();
        display.title.add(Map.of(
                "translate", "stellarity.advancements.aota_recipe_book",
                "bold", true,
                "color", "dark_purple"
        ));
        display.description.add(Map.of(
                "translate", "stellarity.advancements.aota_recipe_book.description"
        ));
        display.background = "minecraft:block/obsidian";
        display.announceToChat = false;
        display.showToast = false;

        AdvancementData.Icon icon = new AdvancementData.Icon();
        icon.id = "minecraft:knowledge_book";
        icon.components.put("minecraft:item_model", "stellarity:endonomicon");
        display.icon = icon;

        Gson gson = new Gson();
        Type type = new TypeToken<Map<String, Object>>() {
        }.getType();
        Map<String, Object> criteria = gson.fromJson("{\"recipe\":{\"trigger\":\"minecraft:inventory_changed\",\"conditions\":{\"items\":[{\"predicates\":{\"minecraft:custom_data\":{\"stellarity.special_item\":\"endonomicon\"}}}]}}}", type);

        advancement.display = display;
        advancement.criteria = criteria;

        return advancement;
    }

    public static String toSubscriptNumbers(int input) {
        // Subscript digits 0–9 as characters
        char[] subscripts = {
                '₀', '₁', '₂', '₃', '₄', '₅', '₆', '₇', '₈', '₉'
        };

        StringBuilder result = new StringBuilder();
        for (char c : String.valueOf(input).toCharArray()) {
            if (Character.isDigit(c)) {
                result.append(subscripts[c - '0']);
            } else {
                result.append(c); // keep non-digits unchanged
            }
        }
        return result.toString();
    }


    private static class AdvancementData {
        static class Advancement {
            Display display;
            String parent;
            Map<String, Object> criteria = new HashMap<>();
            @SerializedName("sends_telemetry_event")
            boolean sendsTelemetry = false;

            {
                // Instance initializer block
                Map<String, String> inner = new HashMap<>();
                inner.put("trigger", "minecraft:impossible");
                criteria.put("recipe", inner);
            }
        }

        // display
        static class Display {
            Icon icon;
            List<Object> title = new ArrayList<>();
            List<Object> description = new ArrayList<>();
            @SerializedName("show_toast")
            boolean showToast = true;
            @SerializedName("announce_to_chat")
            boolean announceToChat = true;
            boolean hidden = false;
            String frame = "task";
            String background;
        }

        static class Reward {
            List<String> loot;
            int experience;
            String function;
        }

        // icon
        static class Icon {
            String id;
            Map<String, String> components = new HashMap<>();
        }
    }
}
