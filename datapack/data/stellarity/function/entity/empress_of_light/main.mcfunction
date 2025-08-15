# Teleport model AS to the hitbox vindicator
  execute unless entity @s[tag=stellarity.empress_of_light.no_rotate] rotated as @s run tp @n[type=item_display,tag=stellarity.empress_of_light.model] ~ ~ ~ ~ 0
  execute if entity @s[tag=stellarity.empress_of_light.no_rotate] run tp @n[type=item_display,tag=stellarity.empress_of_light.model] ~ ~ ~
  execute if entity @s[tag=stellarity.empress_of_light.face_player] as @n[type=item_display,tag=stellarity.empress_of_light.model] at @s facing entity @p eyes run tp @s ~ ~ ~ ~ 0

# Ambient particles
  particle portal ~ ~1.2 ~ 0 0 0 1.2 2
  execute if predicate kohara:chance/25percent run particle witch ~ ~2 ~ 0.3 0.3 0.3 0 1


execute if score @s[tag=!stellarity.empress_of_light.hurt] stellarity.empress_of_light.hurt_time matches 2.. at @s run function stellarity:entity/empress_of_light/core/model/hurt

execute if score @s[tag=stellarity.empress_of_light.hurt] stellarity.empress_of_light.hurt_time matches ..1 as @s run function stellarity:entity/empress_of_light/core/model/unhurt

# Night or day?
  execute unless predicate stellarity:entity/empress_of_light/is_daytime run function stellarity:entity/empress_of_light/core/loop_night
  execute if predicate stellarity:entity/empress_of_light/is_daytime run function stellarity:entity/empress_of_light/core/loop_day

# Wing animation
  execute as @n[type=item_display,tag=stellarity.empress_of_light.model] at @s rotated ~ 0 positioned ^ ^.95 ^-0.175 run function stellarity:entity/empress_of_light/animations/wings/flap

# Bossbar

execute store result score @s stellarity.empress_of_light.health run data get entity @s Health
execute store result bossbar stellarity:empress_of_light value run scoreboard players get @s stellarity.empress_of_light.health

bossbar set stellarity:empress_of_light players
execute at @e[type=vindicator,tag=stellarity.empress_of_light] run bossbar set stellarity:empress_of_light players @a[distance=..100]

execute store result score @s stellarity.empress_of_light.hurt_time run data get entity @s HurtTime

# Music
  execute if entity @s[tag=!stellarity.empress_of_light.death_animation] run function stellarity:entity/empress_of_light/music/tick

# Death animation
  execute if score @s[tag=stellarity.empress_of_light.can_attack,tag=!stellarity.empress_of_light.death_animation] stellarity.empress_of_light.health matches 0..10 run \
  function stellarity:entity/empress_of_light/animations/death/start with entity @s
  execute if entity @s[tag=stellarity.empress_of_light.death_animation] run function stellarity:entity/empress_of_light/animations/death/main

# Attacks
  execute if entity @s[tag=stellarity.empress_of_light.can_attack] run function stellarity:entity/empress_of_light/attacks/loop

scoreboard players add #ambient stellarity.misc 1
execute if score #ambient stellarity.misc matches 200 run function stellarity:entity/empress_of_light/core/ambient

execute unless entity @a[distance=..60] run function stellarity:entity/empress_of_light/core/despawn

# Prevents cheesing
  execute on vehicle run damage @s 999 out_of_world

# Glowing
  execute if entity @s[predicate=stellarity:entity/empress_of_light/is_glowing,tag=!stellarity.empress_of_light.glowing] run function stellarity:entity/empress_of_light/core/glowing/start
  execute if entity @s[predicate=!stellarity:entity/empress_of_light/is_glowing,tag=stellarity.empress_of_light.glowing] run function stellarity:entity/empress_of_light/core/glowing/stop
