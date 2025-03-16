# Phantoms
execute in minecraft:overworld as @e[type=phantom,tag=!stellarity.phantom.aware,distance=0..] at @s run function stellarity:mob/phantom/enlarge
execute as @e[type=phantom] unless score @s stellarity.phantom.size matches 1.. run function stellarity:mob/phantom/score

# Dragon's Ashes tickdown
execute if score #stellarity.dragon.ash_duration stellarity.misc matches 1.. run scoreboard players remove #stellarity.dragon.ash_duration stellarity.misc 1

# Makes Allays despawn naturally if they have spawned naturally in The Hallow
execute as @e[type=allay,tag=stellarity.allay.natural_hallow_spawn] at @s run function stellarity:mob/the_hallow_allay_despawn

# Tridents return when in Void
execute as @e[type=trident,predicate=stellarity:location/below_y_0,predicate=stellarity:location/in_the_end] run data merge entity @s {DealtDamage:1b}

# Villagers
execute as @e[type=villager,tag=!stellarity.aware,tag=!stellarity.villager,predicate=stellarity:location/in_structurein_end_village] at @s run function stellarity:mob/villager/check

execute as @e[type=#stellarity:stat_buff,tag=!stellarity.aware,tag=!stellarity.buffed,predicate=stellarity:location/in_the_end] run function stellarity:mob/convert_to_end_variants

execute as @e[type=#stellarity:entity_awareness_checks,tag=!stellarity.aware] run tag @s add stellarity.aware

schedule function stellarity:loop/timed/1_second 1s
