scoreboard players set #count2 stellarity.misc 126
execute store result entity @e[type=item,limit=1,sort=nearest] Item.Count byte 1 run scoreboard players get #count2 stellarity.misc

# Spawning twice because 2 are missing
# Just a note to self, because revisiting this part gave me a headache
loot spawn ~ ~ ~ loot stellarity:items/materials/hallowed_ingot
loot spawn ~ ~ ~ loot stellarity:items/materials/hallowed_ingot

tag @e[type=item,limit=2,sort=nearest] add stellarity.consecration.ignore
