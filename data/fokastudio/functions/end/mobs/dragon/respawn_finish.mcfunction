# Also moved from a function I do not remember at all
# I need to refactor the code from FE...
particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1 force
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 4 1
kill @e[type=minecraft:end_crystal,distance=..4,tag=fe.respawn_crystal]
advancement grant @a[distance=..100] only minecraft:end/respawn_dragon
tag @s add fe.deactivated
tag @s remove fe.respawn
tag @a remove fe.dragon_defeated
execute as @e[type=minecraft:end_crystal,predicate=fokastudio:end/locations/in_the_end] at @s run function fokastudio:end/end_crystal_transition
scoreboard players reset @s fe.timer
