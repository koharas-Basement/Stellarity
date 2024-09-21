# Teleport model AS to the hitbox vindicator
execute unless entity @s[tag=stellarity.eol.no_rotate] rotated as @s run tp @e[type=armor_stand,limit=1,sort=nearest,tag=stellarity.eol.as] ~ ~ ~ ~ ~
execute if entity @s[tag=stellarity.eol.no_rotate] run tp @e[type=armor_stand,limit=1,sort=nearest,tag=stellarity.eol.as] ~ ~ ~
execute if entity @s[tag=stellarity.eol.face_player] as @e[type=armor_stand,limit=1,sort=nearest,tag=stellarity.eol.as] at @s facing entity @p eyes run tp @s ~ ~ ~ ~ ~

# Ambient particles
particle portal ~ ~1.2 ~ 0 0 0 1.2 2
execute if predicate kohara:chance/25percent run particle witch ~ ~2 ~ 0.3 0.3 0.3 0 1

# Night or day?
execute unless predicate stellarity:mobs/eol/is_daytime run function stellarity:mobs/eol/core/loop_night
execute if predicate stellarity:mobs/eol/is_daytime run function stellarity:mobs/eol/core/loop_day

# Wing animation
execute as @e[type=armor_stand,limit=1,sort=nearest,tag=stellarity.eol.as] at @s rotated ~ 0 positioned ^ ^.95 ^-0.175 run function stellarity:mobs/eol/animations/wings/flap

# Bossbar
data modify storage stellarity:temp eol.entity set from entity @s
execute store result score @s stellarity.eol.health run data get storage stellarity:temp eol.entity.Health
execute store result bossbar stellarity:eol value run scoreboard players get @s stellarity.eol.health

bossbar set stellarity:eol players
execute at @e[type=vindicator,tag=stellarity.eol] run bossbar set stellarity:eol players @a[distance=..100]

execute store result score @s stellarity.eol.hurt_time run data get storage stellarity:temp eol.entity.HurtTime

# Music
execute if entity @s[tag=!stellarity.eol.death_animation] run function stellarity:mobs/eol/music/tick

# Death animation
execute if score @s[tag=stellarity.eol.can_attack,tag=!stellarity.eol.death_animation] stellarity.eol.health matches 0..2 run \
	function stellarity:mobs/eol/animations/death/start
execute if entity @s[tag=stellarity.eol.death_animation] run function stellarity:mobs/eol/animations/death/main

# Attacks
execute if entity @s[tag=stellarity.eol.can_attack] run function stellarity:mobs/eol/attacks/loop

scoreboard players add #ambient stellarity.misc 1
execute if score #ambient stellarity.misc matches 200 run function stellarity:mobs/eol/core/ambient

execute unless entity @a[distance=..60] run function stellarity:mobs/eol/core/despawn

# Prevents cheesing
execute on vehicle run damage @s 999 out_of_world

# Glowing
execute if entity @s[predicate=stellarity:mobs/eol/is_glowing,tag=!stellarity.eol.glowing] run function stellarity:mobs/eol/core/glowing/start
execute if entity @s[predicate=!stellarity:mobs/eol/is_glowing,tag=stellarity.eol.glowing] run function stellarity:mobs/eol/core/glowing/stop
