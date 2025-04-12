summon ender_dragon ~ ~ ~ {DragonPhase:4,Tags:["fe.mob","fe.boss","fe.ender_dragon"],Health:300,attributes:[{id:"max_health",base:300.0},{id:"armor",base:8d},{id:"armor_toughness",base:4d},{id:"knockback_resistance",base:1d},{id:"follow_range",base:80d}]}
summon marker ~ ~ ~ {Tags:["stellarity.dragon_marker","stellarity.marker"]}
item replace entity @e[type=ender_dragon] weapon.mainhand with totem_of_undying

execute if score #stellarity.config stellarity.config.boss_status_messages matches 1 run tellraw @a ["\n",{"translate":"stellarity.boss.dragon.spawn","with":[{"translate":"entity.minecraft.ender_dragon"}],"color":"#AF4BFF"},"\n"]

particle minecraft:explosion_emitter ~ ~ ~ 3 3 3 1 10 force
particle minecraft:cloud ~ ~ ~ 0 0 0 1 300 force
particle minecraft:dragon_breath ~ ~ ~ 0 0 0 1 100 force

function stellarity:mob/dragon/spawn/spiral

playsound minecraft:entity.ender_dragon.growl hostile @a[distance=0..] ~ ~ ~ 10 0.7
playsound minecraft:entity.lightning_bolt.thunder hostile @a[distance=0..] ~ ~ ~ 10 0
playsound minecraft:entity.generic.explode hostile @a[distance=0..] ~ ~ ~ 10 0

execute store result entity @e[type=ender_dragon,limit=1] attributes[{id:"minecraft:max_health"}].base float 1 run scoreboard players get #stellarity.config stellarity.config.dragon_health
execute store result entity @e[type=ender_dragon,limit=1] Health float 1 run scoreboard players get #stellarity.config stellarity.config.dragon_health
execute store result bossbar stellarity:ender_dragon max run scoreboard players get #stellarity.config stellarity.config.dragon_health

team join stellarity.dragon.pacify_others @e[type=minecraft:ender_dragon]

execute as @a run function stellarity:mob/dragon/music/reset
