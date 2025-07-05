package xyz.kohara;

import org.jetbrains.annotations.Nullable;

import java.util.Map;

public record RecipeData(Map<String, Integer> ingredients, String result, xyz.kohara.RecipeData.ResultType resultType, String displayItem,
                         String parent) {

    public RecipeData(Map<String, Integer> ingredients, String result, ResultType resultType, @Nullable String displayItem, @Nullable String parent) {
        this.ingredients = ingredients;
        this.result = result;
        this.parent = parent;
        this.resultType = resultType;
        this.displayItem = displayItem;
    }

    public enum ResultType {
        FUNCTION,
        LOOT,
        LOOT_PARENT
    }
}
