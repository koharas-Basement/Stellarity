# End Crystal stuff
scoreboard players reset #crystal_count stellarity.misc
# Count Crystals (only the ones with the bottom part count)
execute as @e[type=end_crystal,nbt={ShowBottom:1b},distance=..200] at @s run function stellarity:mobs/dragon/crystal/loop
# Make Dragon invulnerable if there is more than 1 Crystal
execute if score #crystal_count stellarity.misc matches 1.. run function stellarity:mobs/dragon/crystal/update_bossbar
execute unless score #crystal_count stellarity.misc matches 1.. run function stellarity:mobs/dragon/crystal/hide_bossbar

# Get health
execute store result score @s fe.health run data get entity @s Health 1
# Convert to percentage
execute store result score #max stellarity.misc run attribute @s generic.max_health get
scoreboard players set #100 stellarity.misc 100
scoreboard players operation @s stellarity.dragon.health_percent = @s fe.health
scoreboard players operation @s stellarity.dragon.health_percent *= #100 stellarity.misc
scoreboard players operation @s stellarity.dragon.health_percent /= #max stellarity.misc
# Prevent Crystals from healing the Dragon
execute if score @s stellarity.dragon.health_old < @s fe.health run function stellarity:mobs/dragon/prevent_heal
scoreboard players operation @s stellarity.dragon.health_old = @s fe.health
# Update bossbar
execute store result bossbar fe:ender_dragon value run scoreboard players get @s fe.health

# Bossbar Visbility
bossbar set fe:ender_dragon players
bossbar set fe:ender_dragon players @a[distance=..300]
bossbar set stellarity:crystal_count players
bossbar set stellarity:crystal_count players @a[distance=..300]


# Phase monitor
# 0 = circling
# 1 = strafing (preparing to shoot a fireball)
# 2 = flying to the portal to land (part of transition to landed state)
# 3 = landing on the portal (part of transition to landed state)
# 4 = taking off from the portal (part of transition out of landed state)
# 5 = landed (performing breath attack)
# 6 = landed (looking for a player for breath attack)
# 7 = landed (roar before beginning breath attack
# 8 = charging player
# 9 = flying to portal to die
execute store result score @s stellarity.misc run data get entity @s DragonPhase
execute unless score @s stellarity.misc matches 5..7 run function stellarity:mobs/dragon/trail
execute if score @s[tag=stellarity.dragon.invulnerable] stellarity.misc matches 2..3 run \
	data modify entity @s DragonPhase set value 0
execute if score @s stellarity.misc matches 5 run function stellarity:mobs/dragon/attacks/roar_breath/main
execute unless score @s stellarity.dragon.shulker_hell matches 1 as @e[type=dragon_fireball] at @s run function stellarity:mobs/dragon/attacks/fireball/summon
execute if score @s stellarity.dragon.shulker_hell matches 1 as @e[type=dragon_fireball] at @s run function stellarity:mobs/dragon/attacks/shulker_hell/trigger
execute if score @s[scores={stellarity.dragon.health_percent=..99}] stellarity.misc matches 4 run function stellarity:mobs/dragon/attacks/take_off/main
	
execute if score @s[scores={stellarity.dragon.perch_cooldown=1..}] stellarity.misc matches 2..3 run \
	data modify entity @s DragonPhase set value 0
execute if score @s stellarity.dragon.time_chainfiring matches 1.. run function stellarity:mobs/dragon/attacks/chainfire/tickdown

# Tick down perch cooldown
scoreboard players remove @s[scores={stellarity.dragon.perch_cooldown=1..}] stellarity.dragon.perch_cooldown 1

# A special helper Marker is spawned right with the Dragon and is used
# for things like death animations, dropping loot at correct time, etc.
execute at @s run tp @e[type=marker,tag=stellarity.dragon_marker] ~ ~ ~
#execute as @e[type=marker,tag=stellarity.dragon_marker] at @s run 

# Wind
#execute if score @s[tag=!stellarity.dragon.wind.1] stellarity.dragon.health_percent matches ..75 run function stellarity:mobs/dragon/wind/spawn
#execute if score @s[tag=!stellarity.dragon.wind.2] stellarity.dragon.health_percent matches ..50 run function stellarity:mobs/dragon/wind/begin_wind_2
#execute if score @s[tag=!stellarity.dragon.wind.3] stellarity.dragon.health_percent matches ..25 run function stellarity:mobs/dragon/wind/begin_wind_3

# Revive 5 random End Crystals 
execute if score @s[tag=!stellarity.dragon.respawned_crystals] stellarity.dragon.health_percent matches ..25 run function stellarity:mobs/dragon/attacks/revive_crystals/initiate

# Heartbeat while below 20% health
# It only gets quicker and quicker
# Plays more often during final hit and is handled in a different file
execute if score @s[tag=!stellarity.flying_to_portal,tag=!stellarity.at_portal] stellarity.dragon.health_percent matches ..20 run function stellarity:mobs/dragon/heartbeat/main


# Fly to portal to die
execute if score @s[tag=!stellarity.at_portal] fe.health matches 0..1 run function stellarity:mobs/dragon/death/fly_to_portal
execute if score @s fe.health matches 1 if score @s[tag=stellarity.to_portal] stellarity.misc matches 5..7 run tag @s add stellarity.at_portal
execute if score @s[tag=stellarity.at_portal] fe.health matches 0..1 run function stellarity:mobs/dragon/death/at_portal_loop

execute as @e[type=shulker,tag=stellarity.dragon_shulker] at @s run particle dragon_breath ~ ~0.2 ~ 0.4 0.4 0.4 0.04 1 normal
execute as @e[type=shulker_bullet,tag=stellarity.dragon_bullet] at @s run function stellarity:mobs/dragon/attacks/shulker_hell/loop_as_bullet

#function stellarity:mobs/dragon/attacks/loop
