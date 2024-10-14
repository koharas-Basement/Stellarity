# Prismatic Inferno
scoreboard players set #effect.duration stellarity.misc 120
execute as @e[type=!#kohara:invalid_targets,distance=..2.75] run function stellarity:utils/status_effects/prismatic_inferno/apply

execute store result score @s stellarity.misc run random value 1..10

data merge entity @s[scores={stellarity.misc=1..5}] {Silent:1b,LifeTime:0b,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;16714241,9375743,3538723,16772661,2399487,15679743,16745006],has_trail:0b,has_twinkle:0b}],flight_duration:1},"minecraft:custom_data":{stellarity.prismatic_blast:1b}}}}

data merge entity @s[scores={stellarity.misc=6..9}] {Silent:1b,LifeTime:0b,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;16714241,9375743,3538723,16772661,2399487,15679743,16745006],has_trail:0b,has_twinkle:0b},{shape:"small_ball",colors:[I;16714241,9375743,3538723,16772661,2399487,15679743,16745006],has_trail:0b,has_twinkle:0b}],flight_duration:1},"minecraft:custom_data":{stellarity.prismatic_blast:1b}}}}

data merge entity @s[scores={stellarity.misc=10}] {Silent:1b,LifeTime:0b,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;16714241,9375743,3538723,16772661,2399487,15679743,16745006],has_trail:0b,has_twinkle:0b},{shape:"small_ball",colors:[I;16714241,9375743,3538723,16772661,2399487,15679743,16745006],has_trail:0b,has_twinkle:0b},{shape:"small_ball",colors:[I;16714241,9375743,3538723,16772661,2399487,15679743,16745006],has_trail:0b,has_twinkle:0b}],flight_duration:1},"minecraft:custom_data":{stellarity.prismatic_blast:1b}}}}

data modify entity @s Owner set from entity @p[predicate=stellarity:items/holding/prismatic_punch] UUID

particle minecraft:end_rod ~ ~ ~ 0 0 0 0.12 20
