# Check if the game needs to perform the fix
# Idk how to make it try to do so only on world load,
# so it performs every tick
# As a result, you can make End Crystals with bases in Survival
# by placing 2 of them at the same block
# If you can do it quick enough that is
# Laggy computers have the advantage here xD

execute store result score @s foka.misc.crystal_fix_count if entity @e[type=end_crystal,distance=..0.5,predicate=fokastudio:end/locations/in_dragons_den]

execute if score @s foka.misc.crystal_fix_count matches 2.. if entity @s[nbt={Invulnerable:1b}] run function fokastudio:end/3d_biome_fix/main
execute if score @s foka.misc.crystal_fix_count matches 2.. unless entity @s[nbt={Invulnerable:1b}] run function fokastudio:end/3d_biome_fix/regular

execute if score @s foka.misc.crystal_fix_count matches 1 if entity @s[nbt={Invulnerable:1b}] run tag @s add foka.initialize_end_ready