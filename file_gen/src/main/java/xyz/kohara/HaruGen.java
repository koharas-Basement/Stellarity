package xyz.kohara;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.*;

public class HaruGen {

    private static final String DATA_FILE = "recipes.md";
    public static final String OUTPUT_DIR = "output/";

    public static List<Map<String, // category
            Map<String, RecipeData>>> recipes = new ArrayList<>(); // recipe name and data

    public static void main(String[] strings) throws IOException {

        File dataFile = new File(DATA_FILE);

        try {
            Scanner reader = new Scanner(dataFile);
            boolean parsingEntry = false;
            String category = "", name = "", result, parent = null, displayItem = null;
            Map<String, Integer> ingredients = new HashMap<>();
            RecipeData.ResultType resultType = null;

            while (reader.hasNextLine()) {

                String content = reader.nextLine();
                if (content.indexOf("### ") == 0) {
                    System.out.println("new category " + content);
                    parsingEntry = false;
                    category = content.substring(4)
                            .replace(" ", "_")
                            .toLowerCase();
                } else if (content.indexOf("## ") == 0) {
                    System.out.println("new entry " + content);
                    //  Reset everything
                    name = "";
                    result = "";
                    resultType = null;
                    parent = null;
                    displayItem = null;
                    ingredients = new HashMap<>();

                    // Start parsing
                    parsingEntry = true;
                    name = content.substring(3);
                    //.replace("## ", "")
                    //.replace(" ", "_")
                    //.toLowerCase();
                } else if (parsingEntry) {
                    if (content.indexOf("-> ") == 0) {
                        String[] data = content.substring(3).split("-");
                        result = data[0];
                        if (data.length < 2 || data[1].isEmpty()) {
                            resultType = RecipeData.ResultType.LOOT;
                        } else if (data[1].indexOf("parent") == 0) {
                            parent = data[1]
                                    .replace("parent(", "")
                                    .replace(")", "")
                                    .replace(":", ".");
                            resultType = RecipeData.ResultType.LOOT_PARENT;
                        } else if (data[1].indexOf("function") == 0) {
                            displayItem = parent = data[1]
                                    .replace("function(", "")
                                    .replace(")", "")
                                    .replace(":", ".");
                            resultType = RecipeData.ResultType.FUNCTION;
                        }
                        recipes.add(
                                Map.of(
                                        category, Map.of(name, new RecipeData(ingredients, result, resultType, displayItem, parent))
                                )
                        );
                        System.out.println("Putting recipe " + category + " " + name);
                        parsingEntry = false;
                    } else {
                        String[] itemData = content.split("-");
                        int amount = (itemData.length < 2 || itemData[1].isEmpty()) ? 1 : Integer.parseInt(itemData[1]);

                        String put;
                        if (itemData[0].contains(":")) {
                            put = itemData[0].replace(":", ".");
                        } else {
                            put = "minecraft." + itemData[0];
                        }
                        ingredients.put(put, amount);
                    }
                }
            }


        } catch (Exception e) {
            throw new RuntimeException(e);
        }

        File outputFolder = new File(OUTPUT_DIR);
        deleteDirectory(outputFolder);

        File craftingFolder = new File(OUTPUT_DIR + "crafting/");
        craftingFolder.mkdirs();

        File craftingFunction = new File(OUTPUT_DIR + "checks.mcfunction");
        craftingFunction.createNewFile();

        recipes.forEach(stringMapMap -> {
            stringMapMap.forEach((category, recipeDataMap) -> {
                try {
                    System.out.println(category + " -> " + recipeDataMap);

                    File categoryFunction = new File(craftingFolder + "/" + category + ".mcfunction");
                    if (!categoryFunction.exists()) {
                        boolean created = categoryFunction.createNewFile();
                        try (BufferedWriter writer = new BufferedWriter(new FileWriter(craftingFunction, true))) {
                            writer.append("function stellarity:mechanic/altar_of_accursed/crafting/" + category + "\n");
                        }
                        if (!created) {
                            System.err.println("Failed to create file: " + category);
                        }
                    }

                    try (BufferedWriter writer = new BufferedWriter(new FileWriter(categoryFunction, true))) {
                        recipeDataMap.forEach((name, recipeData) -> {
                            try {
                                writer.append("# " + name + "\n");
                                Map<String, Integer> ingredients = recipeData.ingredients();
                                writer.append("execute if score @s stellarity.misc matches " + ingredients.keySet().size() + " \\\n");
                                for (String item : ingredients.keySet()) {
                                    writer.append("   if entity @e[type=item,distance=..1.5,tag=stellarity.aota." + item +
                                            ",scores={stellarity.aota.count=" + ingredients.get(item) + "}] \\\n");
                                }
                                switch (recipeData.resultType()) {
                                    case LOOT -> writer.append(
                                            "   run function stellarity:mechanic/altar_of_accursed/crafting/macro/craft_generic {loot:\"" + recipeData.result() + "\"}\n"
                                    );
                                    case LOOT_PARENT -> writer.append(
                                            "   run function stellarity:mechanic/altar_of_accursed/crafting/macro/craft_weapon {loot:\"" + recipeData.result() + "\", parent:\"" + recipeData.parent() + "\"}\n"
                                    );
                                    case FUNCTION -> writer.append("   run function " + recipeData.result() + "\n");
                                }
                                writer.append("\n");
                                FontGen.generateMappings(ingredients.keySet());
                            } catch (IOException e) {
                                throw new RuntimeException("Error writing recipe for " + name, e);
                            }
                        });
                    }

                } catch (IOException e) {
                    throw new RuntimeException("Error handling category: " + category, e);
                }
            });
        });
        FontGen.generateFont();
        AdvancementGen.generateAdvancements();
    }

    static void deleteDirectory(File directoryToBeDeleted) {
        File[] allContents = directoryToBeDeleted.listFiles();
        if (allContents != null) {
            for (File file : allContents) {
                deleteDirectory(file);
            }
        }
        directoryToBeDeleted.delete();
    }
}
