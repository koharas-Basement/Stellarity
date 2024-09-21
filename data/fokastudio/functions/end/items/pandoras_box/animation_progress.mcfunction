execute if score @s foka.items.pandoras_box_animation matches 0..100 run tp @s ~ ~0.03 ~ ~5 ~ 
execute if score @s foka.items.pandoras_box_animation matches 100..120 run tp @s ~ ~ ~ ~10 ~ 
execute if score @s foka.items.pandoras_box_animation matches 120..140 run tp @s ~ ~ ~ ~15 ~ 
execute if score @s foka.items.pandoras_box_animation matches 140..160 run tp @s ~ ~ ~ ~20 ~ 
execute if score @s foka.items.pandoras_box_animation matches 160..180 run tp @s ~ ~ ~ ~25 ~ 
execute if score @s foka.items.pandoras_box_animation matches 180..200 run tp @s ~ ~ ~ ~30 ~ 

execute positioned ~ ~3 ~ if predicate fokastudio:end/locations/above_4_light_level run particle dust_color_transition 0.5 0.6 0.7 1 1 1 1 ~ ~-1.3 ~ 0.2 0.2 0.2 0 4 force
execute positioned ~ ~3 ~ unless predicate fokastudio:end/locations/above_4_light_level run particle dust_color_transition 0.2 0.2 0.2 1 0 0 0 ~ ~-1.3 ~ 0.2 0.2 0.2 0 4 force

execute if score @s foka.items.pandoras_box_animation matches 0..20 run particle end_rod ^ ^1.7 ^0.3 0 0 0 0 1 normal 
execute if score @s foka.items.pandoras_box_animation matches 20..40 run particle end_rod ^ ^1.7 ^0.35 0 0 0 0 1 normal 
execute if score @s foka.items.pandoras_box_animation matches 40..60 run particle end_rod ^ ^1.7 ^0.4 0 0 0 0 1 normal 
execute if score @s foka.items.pandoras_box_animation matches 60..80 run particle end_rod ^ ^1.7 ^0.45 0 0 0 0 1 normal 
execute if score @s foka.items.pandoras_box_animation matches 80..100 run particle end_rod ^ ^1.7 ^0.5 0 0 0 0 1 normal 
execute if score @s foka.items.pandoras_box_animation matches 100..120 run particle end_rod ^ ^1.7 ^0.55 0 0 0 0 1 normal 
execute if score @s foka.items.pandoras_box_animation matches 120..140 run particle end_rod ^ ^1.7 ^0.6 0 0 0 0 1 normal 
execute if score @s foka.items.pandoras_box_animation matches 140..160 run particle end_rod ^ ^1.7 ^0.65 0 0 0 0 1 normal 
execute if score @s foka.items.pandoras_box_animation matches 160..180 run particle end_rod ^ ^1.7 ^0.7 0 0 0 0 1 normal 
execute if score @s foka.items.pandoras_box_animation matches 180..200 run particle end_rod ^ ^1.7 ^0.75 0 0 0 0 1 normal 
execute if score @s foka.items.pandoras_box_animation matches 0..20 run particle end_rod ^ ^1.7 ^-0.3 0 0 0 0 1 normal 
execute if score @s foka.items.pandoras_box_animation matches 20..40 run particle end_rod ^ ^1.7 ^-0.35 0 0 0 0 1 normal 
execute if score @s foka.items.pandoras_box_animation matches 40..60 run particle end_rod ^ ^1.7 ^-0.4 0 0 0 0 1 normal 
execute if score @s foka.items.pandoras_box_animation matches 60..80 run particle end_rod ^ ^1.7 ^-0.45 0 0 0 0 1 normal 
execute if score @s foka.items.pandoras_box_animation matches 80..100 run particle end_rod ^ ^1.7 ^-0.5 0 0 0 0 1 normal 
execute if score @s foka.items.pandoras_box_animation matches 100..120 run particle end_rod ^ ^1.7 ^-0.55 0 0 0 0 1 normal 
execute if score @s foka.items.pandoras_box_animation matches 120..140 run particle end_rod ^ ^1.7 ^-0.6 0 0 0 0 1 normal 
execute if score @s foka.items.pandoras_box_animation matches 140..160 run particle end_rod ^ ^1.7 ^-0.65 0 0 0 0 1 normal 
execute if score @s foka.items.pandoras_box_animation matches 160..180 run particle end_rod ^ ^1.7 ^-0.7 0 0 0 0 1 normal 
execute if score @s foka.items.pandoras_box_animation matches 180..200 run particle end_rod ^ ^1.7 ^-0.75 0 0 0 0 1 normal 

# There has to be a more efficient method for that xD
execute if score @s foka.items.pandoras_box_animation matches 0 run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 0.5
execute if score @s foka.items.pandoras_box_animation matches 3 run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 0.52
execute if score @s foka.items.pandoras_box_animation matches 6 run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 0.55
execute if score @s foka.items.pandoras_box_animation matches 9 run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 0.58
execute if score @s foka.items.pandoras_box_animation matches 12 run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 0.61
execute if score @s foka.items.pandoras_box_animation matches 15 run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 0.66
execute if score @s foka.items.pandoras_box_animation matches 18 run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 0.71
execute if score @s foka.items.pandoras_box_animation matches 21 run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 0.75
execute if score @s foka.items.pandoras_box_animation matches 24 run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 0.79
execute if score @s foka.items.pandoras_box_animation matches 27 run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 0.83
execute if score @s foka.items.pandoras_box_animation matches 30 run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 0.88
execute if score @s foka.items.pandoras_box_animation matches 33 run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 0.92
execute if score @s foka.items.pandoras_box_animation matches 36 run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 0.96
execute if score @s foka.items.pandoras_box_animation matches 39 run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 1
execute if score @s foka.items.pandoras_box_animation matches 42 run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 1.05
execute if score @s foka.items.pandoras_box_animation matches 45 run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 1.09
execute if score @s foka.items.pandoras_box_animation matches 48 run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 1.11
execute if score @s foka.items.pandoras_box_animation matches 51 run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 1.14
execute if score @s foka.items.pandoras_box_animation matches 54 run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 1.16
execute if score @s foka.items.pandoras_box_animation matches 57 run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 1.19
execute if score @s foka.items.pandoras_box_animation matches 60 run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 1.22
execute if score @s foka.items.pandoras_box_animation matches 63 run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 1.26
execute if score @s foka.items.pandoras_box_animation matches 66 run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 1.3
execute if score @s foka.items.pandoras_box_animation matches 69 run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 1.32
execute if score @s foka.items.pandoras_box_animation matches 72 run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 1.35
execute if score @s foka.items.pandoras_box_animation matches 75 run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 1.39
execute if score @s foka.items.pandoras_box_animation matches 78 run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 1.45
execute if score @s foka.items.pandoras_box_animation matches 81 run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 1.51
execute if score @s foka.items.pandoras_box_animation matches 84 run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 1.57
execute if score @s foka.items.pandoras_box_animation matches 87 run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 1.63
execute if score @s foka.items.pandoras_box_animation matches 90 run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 1.71
execute if score @s foka.items.pandoras_box_animation matches 93 run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 1.78
execute if score @s foka.items.pandoras_box_animation matches 96 run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 1.85
execute if score @s foka.items.pandoras_box_animation matches 99 run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 1.94
execute if score @s foka.items.pandoras_box_animation matches 0 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 0.5
execute if score @s foka.items.pandoras_box_animation matches 3 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 0.52
execute if score @s foka.items.pandoras_box_animation matches 6 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 0.55
execute if score @s foka.items.pandoras_box_animation matches 9 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 0.58
execute if score @s foka.items.pandoras_box_animation matches 12 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 0.61
execute if score @s foka.items.pandoras_box_animation matches 15 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 0.66
execute if score @s foka.items.pandoras_box_animation matches 18 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 0.71
execute if score @s foka.items.pandoras_box_animation matches 21 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 0.75
execute if score @s foka.items.pandoras_box_animation matches 24 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 0.79
execute if score @s foka.items.pandoras_box_animation matches 27 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 0.83
execute if score @s foka.items.pandoras_box_animation matches 30 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 0.88
execute if score @s foka.items.pandoras_box_animation matches 33 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 0.92
execute if score @s foka.items.pandoras_box_animation matches 36 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 0.96
execute if score @s foka.items.pandoras_box_animation matches 39 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 1
execute if score @s foka.items.pandoras_box_animation matches 42 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 1.05
execute if score @s foka.items.pandoras_box_animation matches 45 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 1.09
execute if score @s foka.items.pandoras_box_animation matches 48 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 1.11
execute if score @s foka.items.pandoras_box_animation matches 51 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 1.14
execute if score @s foka.items.pandoras_box_animation matches 54 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 1.16
execute if score @s foka.items.pandoras_box_animation matches 57 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 1.19
execute if score @s foka.items.pandoras_box_animation matches 60 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 1.22
execute if score @s foka.items.pandoras_box_animation matches 63 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 1.26
execute if score @s foka.items.pandoras_box_animation matches 66 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 1.3
execute if score @s foka.items.pandoras_box_animation matches 69 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 1.32
execute if score @s foka.items.pandoras_box_animation matches 72 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 1.35
execute if score @s foka.items.pandoras_box_animation matches 75 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 1.39
execute if score @s foka.items.pandoras_box_animation matches 78 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 1.45
execute if score @s foka.items.pandoras_box_animation matches 81 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 1.51
execute if score @s foka.items.pandoras_box_animation matches 84 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 1.57
execute if score @s foka.items.pandoras_box_animation matches 87 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 1.63
execute if score @s foka.items.pandoras_box_animation matches 90 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 1.71
execute if score @s foka.items.pandoras_box_animation matches 93 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 1.78
execute if score @s foka.items.pandoras_box_animation matches 96 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 1.85
execute if score @s foka.items.pandoras_box_animation matches 99 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 1.94

execute if score @s foka.items.pandoras_box_animation matches 120 run playsound minecraft:entity.tnt.primed master @a ~ ~ ~ 1 1
execute if score @s foka.items.pandoras_box_animation matches 130 run playsound minecraft:entity.tnt.primed master @a ~ ~ ~ 1 1
execute if score @s foka.items.pandoras_box_animation matches 140 run playsound minecraft:entity.tnt.primed master @a ~ ~ ~ 1 1
execute if score @s foka.items.pandoras_box_animation matches 150 run playsound minecraft:entity.tnt.primed master @a ~ ~ ~ 1 1
execute if score @s foka.items.pandoras_box_animation matches 160 run playsound minecraft:entity.tnt.primed master @a ~ ~ ~ 1 1
execute if score @s foka.items.pandoras_box_animation matches 170 run playsound minecraft:entity.evoker.prepare_attack master @a ~ ~ ~ 1 1
execute if score @s foka.items.pandoras_box_animation matches 199 run playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 1 0.7
execute if score @s foka.items.pandoras_box_animation matches 199 run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 0.9
execute if score @s foka.items.pandoras_box_animation matches 199 if predicate fokastudio:end/locations/above_4_light_level run playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1 0.9
execute if score @s foka.items.pandoras_box_animation matches 199 unless predicate fokastudio:end/locations/above_4_light_level run playsound minecraft:entity.phantom.bite master @a ~ ~ ~ 1 0.86

execute if score @s foka.items.pandoras_box_animation matches 0 run particle firework ~ ~1.7 ~ 0 0 0 0 1 normal @a
execute if score @s foka.items.pandoras_box_animation matches 3 run particle firework ~ ~1.7 ~ 0 0 0 0 1 normal @a
execute if score @s foka.items.pandoras_box_animation matches 6 run particle firework ~ ~1.7 ~ 0 0 0 0 1 normal @a
execute if score @s foka.items.pandoras_box_animation matches 9 run particle firework ~ ~1.7 ~ 0 0 0 0 1 normal @a
execute if score @s foka.items.pandoras_box_animation matches 12 run particle firework ~ ~1.7 ~ 0 0 0 0 1 normal @a
execute if score @s foka.items.pandoras_box_animation matches 15 run particle firework ~ ~1.7 ~ 0 0 0 0 1 normal @a
execute if score @s foka.items.pandoras_box_animation matches 18 run particle firework ~ ~1.7 ~ 0 0 0 0 1 normal @a
execute if score @s foka.items.pandoras_box_animation matches 21 run particle firework ~ ~1.7 ~ 0 0 0 0 1 normal @a
execute if score @s foka.items.pandoras_box_animation matches 24 run particle firework ~ ~1.7 ~ 0 0 0 0 1 normal @a
execute if score @s foka.items.pandoras_box_animation matches 27 run particle firework ~ ~1.7 ~ 0 0 0 0 1 normal @a
execute if score @s foka.items.pandoras_box_animation matches 30 run particle firework ~ ~1.7 ~ 0 0 0 0 1 normal @a
execute if score @s foka.items.pandoras_box_animation matches 33 run particle firework ~ ~1.7 ~ 0 0 0 0 1 normal @a
execute if score @s foka.items.pandoras_box_animation matches 36 run particle firework ~ ~1.7 ~ 0 0 0 0 1 normal @a
execute if score @s foka.items.pandoras_box_animation matches 39 run particle firework ~ ~1.7 ~ 0 0 0 0 1 normal @a
execute if score @s foka.items.pandoras_box_animation matches 42 run particle firework ~ ~1.7 ~ 0 0 0 0 1 normal @a
execute if score @s foka.items.pandoras_box_animation matches 45 run particle firework ~ ~1.7 ~ 0 0 0 0 1 normal @a
execute if score @s foka.items.pandoras_box_animation matches 48 run particle firework ~ ~1.7 ~ 0 0 0 0 1 normal @a
execute if score @s foka.items.pandoras_box_animation matches 51 run particle firework ~ ~1.7 ~ 0 0 0 0 1 normal @a
execute if score @s foka.items.pandoras_box_animation matches 54 run particle firework ~ ~1.7 ~ 0 0 0 0 1 normal @a
execute if score @s foka.items.pandoras_box_animation matches 57 run particle firework ~ ~1.7 ~ 0 0 0 0 1 normal @a
execute if score @s foka.items.pandoras_box_animation matches 60 run particle firework ~ ~1.7 ~ 0 0 0 0 1 normal @a
execute if score @s foka.items.pandoras_box_animation matches 63 run particle firework ~ ~1.7 ~ 0 0 0 0 1 normal @a
execute if score @s foka.items.pandoras_box_animation matches 66 run particle firework ~ ~1.7 ~ 0 0 0 0 1 normal @a
execute if score @s foka.items.pandoras_box_animation matches 69 run particle firework ~ ~1.7 ~ 0 0 0 0 1 normal @a
execute if score @s foka.items.pandoras_box_animation matches 72 run particle firework ~ ~1.7 ~ 0 0 0 0 1 normal @a
execute if score @s foka.items.pandoras_box_animation matches 75 run particle firework ~ ~1.7 ~ 0 0 0 0 1 normal @a
execute if score @s foka.items.pandoras_box_animation matches 78 run particle firework ~ ~1.7 ~ 0 0 0 0 1 normal @a
execute if score @s foka.items.pandoras_box_animation matches 81 run particle firework ~ ~1.7 ~ 0 0 0 0 1 normal @a
execute if score @s foka.items.pandoras_box_animation matches 84 run particle firework ~ ~1.7 ~ 0 0 0 0 1 normal @a
execute if score @s foka.items.pandoras_box_animation matches 87 run particle firework ~ ~1.7 ~ 0 0 0 0 1 normal @a
execute if score @s foka.items.pandoras_box_animation matches 90 run particle firework ~ ~1.7 ~ 0 0 0 0 1 normal @a
execute if score @s foka.items.pandoras_box_animation matches 93 run particle firework ~ ~1.7 ~ 0 0 0 0 1 normal @a
execute if score @s foka.items.pandoras_box_animation matches 96 run particle firework ~ ~1.7 ~ 0 0 0 0 1 normal @a
execute if score @s foka.items.pandoras_box_animation matches 99 run particle firework ~ ~1.7 ~ 0 0 0 0 1 normal @a
execute if score @s foka.items.pandoras_box_animation matches 120 run particle dust 0.275 0.275 0.275 0.8 ~ ~1.7 ~ 0.7 0.7 0.7 0.05 10 normal
execute if score @s foka.items.pandoras_box_animation matches 130 run particle dust 0.275 0.275 0.275 1 ~ ~1.7 ~ 0.7 0.7 0.7 0.05 10 normal
execute if score @s foka.items.pandoras_box_animation matches 140 run particle dust 0.275 0.275 0.275 1.2 ~ ~1.7 ~ 0.7 0.7 0.7 0.05 10 normal
execute if score @s foka.items.pandoras_box_animation matches 150 run particle dust 0.275 0.275 0.275 1.4 ~ ~1.7 ~ 0.7 0.7 0.7 0.05 10 normal
execute if score @s foka.items.pandoras_box_animation matches 160 run particle dust 0.275 0.275 0.275 1.6 ~ ~1.7 ~ 0.7 0.7 0.7 0.05 10 normal
execute if score @s foka.items.pandoras_box_animation matches 170 run particle enchant ~ ~2.7 ~ 0 0 0 5 25 force
execute if score @s foka.items.pandoras_box_animation matches 199 run particle lava ~ ~1.7 ~ 0 0 0 0 15 normal
execute if score @s foka.items.pandoras_box_animation matches 200.. run particle minecraft:flash ~ ~1.7 ~ 1 1 1 0 5 force
execute if score @s foka.items.pandoras_box_animation matches 200.. run particle minecraft:explosion ~ ~1.7 ~ 1 1 1 0 10 force
# That is a lot of functions for just particles and sounds...

execute if score @s foka.items.pandoras_box_animation matches 200.. at @s run function fokastudio:end/items/pandoras_box/summons/check
scoreboard players add @s foka.items.pandoras_box_animation 1