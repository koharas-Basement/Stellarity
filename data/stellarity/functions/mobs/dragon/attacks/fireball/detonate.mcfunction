kill @s[type=marker]

# Cloud
execute align y run summon area_effect_cloud ~ ~ ~ {Radius:1f,RadiusPerTick:0.015f,Duration:300,effects:[{id:"minecraft:instant_damage",amplifier:0b,duration:1,show_particles:0b}],ReapplicationDelay:12,RadiusOnUse:0f,Particle:"minecraft:dragon_breath",Tags:["stellarity.dragon_breath"]}
data modify entity @e[type=area_effect_cloud,limit=1,sort=nearest,tag=stellarity.dragon_breath] Owner set from entity @e[type=ender_dragon,limit=1,sort=nearest] UUID

# Small explosion
execute align y run summon firework_rocket ~ ~ ~ {Silent:1b,LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Explosions:[{Type:0,Trail:0,Flicker:0,Colors:[I;14876888,13697223,12779705,14156003]}],Flight:1}}},Tags:["stellarity.dragon_breath"]}
data modify entity @e[type=firework_rocket,limit=1,sort=nearest,tag=stellarity.dragon_breath] Owner set from entity @e[type=ender_dragon,limit=1,sort=nearest] UUID

playsound minecraft:entity.dragon_fireball.explode hostile @a[distance=0..] ~ ~ ~ 1 1

particle minecraft:dragon_breath ~ ~ ~ 0 0 0 0.2 30 normal
particle minecraft:dragon_breath ~ ~ ~ 0 0 0 0.1 30 normal
particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.15 10

scoreboard players set #effect.duration stellarity.misc 120
scoreboard players set #effect.level stellarity.misc 1

execute if score #difficulty stellarity.misc matches 3 as @a[distance=..3] run function stellarity:utils/status_effects/voided/apply
