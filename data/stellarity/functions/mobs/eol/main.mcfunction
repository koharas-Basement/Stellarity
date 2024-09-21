# Teleport model AS to the hitbox vindicator
execute unless entity @s[tag=stellarity.eol.no_rotate] rotated as @s run tp @e[type=armor_stand,limit=1,sort=nearest,tag=stellarity.eol.as] ~ ~ ~ ~ ~
execute if entity @s[tag=stellarity.eol.no_rotate] run tp @e[type=armor_stand,limit=1,sort=nearest,tag=stellarity.eol.as] ~ ~ ~
execute if entity @s[tag=stellarity.eol.face_player] as @e[type=armor_stand,limit=1,sort=nearest,tag=stellarity.eol.as] at @s facing entity @p eyes run tp @s ~ ~ ~ ~ ~

# Night or day?
tag @s remove stellarity.eol.nighttime
execute unless predicate stellarity:mobs/eol/is_daytime run function stellarity:mobs/eol/core/loop_night
tag @s remove stellarity.eol.daytime
execute if predicate stellarity:mobs/eol/is_daytime run function stellarity:mobs/eol/core/loop_day

# Wing animation
execute as @e[type=armor_stand,limit=1,sort=nearest,tag=stellarity.eol.as] at @s rotated ~ 0 positioned ^ ^.95 ^-0.175 run function stellarity:mobs/eol/animations/wings/flap

## Bossbar
# Bossbar visibility
# Value
execute store result score @s stellarity.eol.health run data get entity @s Health
execute store result bossbar stellarity:eol value run scoreboard players get @s stellarity.eol.health

execute store result score @s stellarity.eol.hurt_time run data get entity @s HurtTime

# Death animation
execute if score @s[tag=stellarity.eol.can_attack] stellarity.eol.health matches 1 run function stellarity:mobs/eol/animations/death/start
execute if entity @s[tag=stellarity.eol.death_animation] run function stellarity:mobs/eol/animations/death/main

# Attacks
execute if entity @s[tag=stellarity.eol.can_attack] run function stellarity:mobs/eol/attacks/loop

scoreboard players add #ambient stellarity.misc 1
execute if score #ambient stellarity.misc matches 200 run playsound minecraft:entity.vex.ambient hostile @a[distance=0..] ~ ~ ~ 2.2 1
execute if score #ambient stellarity.misc matches 200 run playsound minecraft:entity.allay.ambient_without_item hostile @a[distance=0..] ~ ~ ~ 2.2 1
execute if score #ambient stellarity.misc matches 200 run scoreboard players reset #ambient stellarity.misc

execute unless entity @a[distance=..60] run function stellarity:mobs/eol/core/despawn

# Prevents cheesing
execute on vehicle run kill @s

# Remove Glowing
effect clear @s glowing
