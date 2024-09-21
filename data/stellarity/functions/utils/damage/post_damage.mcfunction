# Remove Holy Protection if a player has it
execute if entity @s[type=player,tag=stellarity.holy_protection] run function stellarity:items/armors/hallowed_armor/holy_protection/off
