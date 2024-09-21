summon ender_dragon ~ ~ ~ {DragonPhase:4,Tags:["fe.mob","fe.boss","fe.ender_dragon"],Health:300,Attributes:[{Name:"generic.max_health",Base:300.0},{Name:"generic.armor",Base:10d},{Name:"generic.armor_toughness",Base:5d},{Name:"generic.knockback_resistance",Base:1d},{Name:"generic.follow_range",Base:80d}]}
summon marker ~ ~ ~ {Tags:["stellarity.dragon_marker","stellarity.marker"]}
item replace entity @e[type=ender_dragon] weapon.mainhand with totem_of_undying 

particle minecraft:explosion_emitter ~ ~ ~ 3 3 3 1 10 force
particle minecraft:cloud ~ ~ ~ 0 0 0 1 300 force
particle minecraft:dragon_breath ~ ~ ~ 0 0 0 1 100 force

function stellarity:mobs/dragon/spawn/spiral

playsound minecraft:entity.ender_dragon.growl hostile @a[distance=0..] ~ ~ ~ 10 0.7
playsound minecraft:entity.lightning_bolt.thunder hostile @a[distance=0..] ~ ~ ~ 10 0
playsound minecraft:entity.generic.explode hostile @a[distance=0..] ~ ~ ~ 10 0

execute store result entity @e[type=ender_dragon,limit=1] Attributes[{Name:"minecraft:generic.max_health"}].Base float 1 run scoreboard players get #stellarity.config stellarity.config.dragon_health
execute store result entity @e[type=ender_dragon,limit=1] Health float 1 run scoreboard players get #stellarity.config stellarity.config.dragon_health
execute store result bossbar fe:ender_dragon max run scoreboard players get #stellarity.config stellarity.config.dragon_health
