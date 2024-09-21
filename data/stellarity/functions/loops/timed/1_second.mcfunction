# Bossbar Clears
bossbar set stellarity:eol players
execute at @e[type=vindicator,tag=stellarity.eol] run bossbar set stellarity:eol players @a[distance=..100]

execute in minecraft:overworld as @e[type=phantom,tag=!stellarity.phantom.aware,distance=0..,nbt={Size:0}] at @s run function stellarity:mobs/phantom/enlarge 
execute as @e[type=phantom] unless score @s stellarity.phantom.size matches 1.. run function stellarity:mobs/phantom/score

# Villagers
execute as @e[type=villager,tag=stellarity.villager.aware,predicate=!kohara:is_baby,tag=!stellarity.villager.nitwit,tag=!stellarity.villager.has_job] at @s run function stellarity:mobs/villager/main

execute if score #stellarity.dragon.ash_duration stellarity.misc matches 1.. run scoreboard players remove #stellarity.dragon.ash_duration stellarity.misc 1

# Makes Allays despawn naturally if they have spawned in The Hallow
execute as @e[type=allay,tag=stellarity.allay.natural_hallow_spawn] at @s run function stellarity:mobs/the_hallow_allay_despawn

schedule function stellarity:loops/timed/1_second 1s
