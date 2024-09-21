recipe take @s kohara:unlock_all_recipes
advancement revoke @s only kohara:unlock_all_recipes

tellraw @s [{"translate":"kohara.unlock_all_recipes","fallback":"Please remove any 'Unlock All Recipes' type of packs/mods, as they cause various issues with other datapacks","color":"red","hoverEvent": {"action":"show_text","contents": {"translate":"kohara","fallback":"kohara's Libs","italic": false,"color":"white"}},"clickEvent": {"action": "open_url","value": "https://modrinth.com/datapacks/koharas-libs"}}]
