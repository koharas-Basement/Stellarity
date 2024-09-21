loot give @s loot stellarity:items/armors/ancient_armor/helmet
loot give @s loot stellarity:items/armors/ancient_armor/chestplate
loot give @s loot stellarity:items/armors/ancient_armor/leggings
loot give @s loot stellarity:items/armors/ancient_armor/boots

tellraw @s ["\n",{"translate":"stellarity.messages.cmd.get_ancient_armor","fallback":"Gave a full set of Ancient Armor","color":"#DD6AFF","bold":true},"\n"]
function stellarity:utils/send_command_feedback/off
