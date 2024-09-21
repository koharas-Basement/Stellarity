execute if entity @s[predicate=kohara:player/is_sneaking] run function stellarity:items/ender_insignia/heal

# Removing effects
execute if entity @s[nbt={HurtTime:9s}] run function stellarity:items/ender_insignia/hurt

execute if entity @s[tag=stellarity.ender_insignia.active,predicate=!kohara:player/is_sneaking] run function stellarity:items/ender_insignia/stop

