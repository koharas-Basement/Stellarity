# Prismatic Inferno
scoreboard players set #dot.time stellarity.misc 100
execute as @e[type=!#kohara:invalid_targets,distance=..5] run function stellarity:utils/status_effects/prismatic_inferno/apply

data merge entity @s \
	{Silent:1b,LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",Count:1b,tag:{stellarity.prismatic_blast:1b,Fireworks:{Explosions:[\
	{Type:1,Trail:0,Flicker:0,Colors:[I;16714241,9375743,3538723,16772661,2399487,15679743,16745006]},\
	{Type:0,Trail:0,Flicker:0,Colors:[I;16777215,14079702,11842740,11316396,11645361,9079434]},\
	{Type:0,Trail:0,Flicker:0,Colors:[I;16742259,12746239,9371524,16774538,8439551,15954431,16751707]}\
	],Flight:1}}}}

data modify entity @s Owner set from entity @p[predicate=stellarity:items/holding/prismatic_punch] UUID

particle minecraft:end_rod ~ ~ ~ 0 0 0 0.24 50
