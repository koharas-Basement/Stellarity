loot give @s loot stellarity:items/armors/shulker_armor/helmet
loot give @s loot stellarity:items/armors/shulker_armor/chestplate
loot give @s loot stellarity:items/armors/shulker_armor/leggings
loot give @s loot stellarity:items/armors/shulker_armor/boots

tellraw @s ["\n",{"translate":"stellarity.messages.cmd.get_shulker_armor","fallback":"Gave a full set of Shulker Armor","color":"#DD6AFF","bold":true},"\n"]
function stellarity:utils/send_command_feedback/off
