# In case I ever wanted to add more
particle minecraft:ambient_entity_effect ~ ~1 ~ 0.8 0.77 0 0.9 0 force

execute if entity @s[predicate=kohara:player/is_running,predicate=!kohara:player/is_swimming] run function stellarity:items/armors/hallowed_armor/trail