# Prismatic Inferno
scoreboard players set #dot.time stellarity.misc 60
execute as @e[type=!#kohara:invalid_targets,distance=..2.75] run function stellarity:utils/status_effects/prismatic_inferno/apply

execute store result score @s stellarity.misc run random value 1..10

data merge entity @s[scores={stellarity.misc=1..5}] \
	{Silent:1b,LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",Count:1b,tag:{stellarity.prismatic_blast:1b,Fireworks:{Explosions:[\
	{Type:0,Trail:0,Flicker:0,Colors:[I;16714241,9375743,3538723,16772661,2399487,15679743,16745006]}\
	],Flight:1}}}}

data merge entity @s[scores={stellarity.misc=6..9}] \
	{Silent:1b,LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",Count:1b,tag:{stellarity.prismatic_blast:1b,Fireworks:{Explosions:[\
	{Type:0,Trail:0,Flicker:0,Colors:[I;16714241,9375743,3538723,16772661,2399487,15679743,16745006]},\
	{Type:0,Trail:0,Flicker:0,Colors:[I;16714241,9375743,3538723,16772661,2399487,15679743,16745006]}\
	],Flight:1}}}}

data merge entity @s[scores={stellarity.misc=10}] \
	{Silent:1b,LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",Count:1b,tag:{stellarity.prismatic_blast:1b,Fireworks:{Explosions:[\
	{Type:0,Trail:0,Flicker:0,Colors:[I;16714241,9375743,3538723,16772661,2399487,15679743,16745006]},\
	{Type:0,Trail:0,Flicker:0,Colors:[I;16714241,9375743,3538723,16772661,2399487,15679743,16745006]},\
	{Type:0,Trail:0,Flicker:0,Colors:[I;16714241,9375743,3538723,16772661,2399487,15679743,16745006]}\
	],Flight:1}}}}

data modify entity @s Owner set from entity @p[predicate=stellarity:items/holding/prismatic_punch] UUID

particle minecraft:end_rod ~ ~ ~ 0 0 0 0.12 20
