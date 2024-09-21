tag @s[type=marker] add stellarity.post_gen.initialized

place template stellarity:altar_of_the_accursed 42 67 -48 none none 1 666

execute as @e[type=end_crystal,predicate=stellarity:locations/dragons_den/in_biome] at @s run function stellarity:post_gen/remove_crystals

execute positioned 7 60 0 run setblock ~ ~ ~ minecraft:chest[facing=east,type=single,waterlogged=false]{LootTable:"stellarity:dragons_den"} replace
execute positioned 7 60 0 run summon marker ~ ~0.5 ~ {Tags:["stellarity.dragons_den_chest","stellarity.marker"]}
