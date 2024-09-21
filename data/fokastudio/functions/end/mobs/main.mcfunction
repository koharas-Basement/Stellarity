execute as @e[type=vex,predicate=fokastudio:end/locations/biomes/in_the_hallow,tag=!foka.pixiem,tag=!foka.aware] at @s run function fokastudio:end/mobs/pixie/vex_to_pixie
execute as @e[type=vex,tag=foka.pixie] at @s run function fokastudio:end/mobs/pixie/particles

tag @e[type=vex,tag=!foka.aware] add foka.aware
