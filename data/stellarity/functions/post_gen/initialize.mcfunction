tag @s[type=marker] add stellarity.post_gen.initialized

place template stellarity:altar_of_the_accursed 42 67 -48 none none 1 666

execute as @e[type=end_crystal,predicate=stellarity:locations/in_dragons_den] at @s run function stellarity:post_gen/remove_crystals

execute positioned 7 60 0 run setblock ~ ~ ~ minecraft:chest[facing=east,type=single,waterlogged=false]{LootTable:"stellarity:dragons_den"}
