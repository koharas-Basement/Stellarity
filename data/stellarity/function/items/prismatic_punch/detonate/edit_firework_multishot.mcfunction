# Prismatic Inferno
scoreboard players set #effect.duration stellarity.misc 160
execute as @e[type=!#kohara:invalid_targets,distance=..5] run function stellarity:utils/status_effects/prismatic_inferno/apply

data merge entity @s {Silent:1b,LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",colors:[I;16714241,9375743,3538723,16772661,2399487,15679743,16745006],has_trail:0b,has_twinkle:0b},{shape:"small_ball",colors:[I;16777215,14079702,11842740,11316396,11645361,9079434],has_trail:0b,has_twinkle:0b},{shape:"small_ball",colors:[I;16742259,12746239,9371524,16774538,8439551,15954431,16751707],has_trail:0b,has_twinkle:0b}],flight_duration:1},"minecraft:custom_data":{stellarity.prismatic_blast:1}}}}

data modify entity @s Owner set from entity @p[predicate=stellarity:items/holding/prismatic_punch] UUID

particle minecraft:end_rod ~ ~ ~ 0 0 0 0.24 50
