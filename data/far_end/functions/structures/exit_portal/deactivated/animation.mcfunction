summon ender_dragon 0 128 0 {DragonPhase:4,Tags:["fe.mob","fe.boss","fe.ender_dragon"],Health:300,Attributes:[{Name:"generic.max_health",Base:300.0},{Name:"generic.armor",Base:8d},{Name:"generic.armor_toughness",Base:4d},{Name:"generic.knockback_resistance",Base:1d},{Name:"generic.follow_range",Base:80d}]}
summon marker 0 128 0 {Tags:["stellarity.dragon_marker"]}

particle minecraft:explosion_emitter 0 128 0 3 3 3 1 10 force
particle minecraft:cloud 0 128 0 0 0 0 1 300 force
particle minecraft:dragon_breath 0 128 0 0 0 0 1 100 force

playsound minecraft:entity.ender_dragon.growl hostile @a 0 128 0 10 0.7
playsound minecraft:entity.lightning_bolt.thunder hostile @a 0 128 0 10 0
playsound minecraft:entity.generic.explode hostile @a 0 128 0 10 0

function far_end:structures/exit_portal/deactivated/generate

tag @s add fe.in_dragon_fight
tag @s remove fe.deactivated.spawn_dragon

execute store result entity @e[type=ender_dragon,limit=1] Attributes[{Name:"minecraft:generic.max_health"}].Base float 1 run scoreboard players get #stellarity.config stellarity.config.dragon_health
execute store result entity @e[type=ender_dragon,limit=1] Health float 1 run scoreboard players get #stellarity.config stellarity.config.dragon_health
execute store result bossbar fe:ender_dragon max run scoreboard players get #stellarity.config stellarity.config.dragon_health

stopsound @a[predicate=stellarity:locations/in_dragons_den] music
