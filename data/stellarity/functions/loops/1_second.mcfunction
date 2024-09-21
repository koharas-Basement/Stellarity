execute as @e[type=marker,tag=stellarity.altar_of_accursed,tag=stellarity.aota_activated] at @s run function stellarity:mechanics/altar_crafting/main
execute as @e[type=marker,tag=stellarity.altar_of_the_light] at @s run function stellarity:mechanics/altar_of_light/main

execute as @e[type=item,predicate=stellarity:locations/biomes/in_the_hallow] at @s if block ~ ~ ~ water run function stellarity:mechanics/consecration/main

execute in minecraft:overworld as @e[type=phantom,tag=!stellarity.phantom.aware,distance=0..,nbt={Size:0}] at @s run function stellarity:mobs/phantom/enlarge 
execute as @e[type=phantom] unless score @s stellarity.phantom.size matches 1.. run function stellarity:mobs/phantom/score

execute as @e[type=marker,tag=stellarity.book_of_light.aura] at @s as @a[distance=..5.5] run function stellarity:items/spellbooks/light/effects

# Villagers
execute as @e[type=villager,tag=stellarity.villager.aware,predicate=!stellarity:utils/is_baby,tag=!stellarity.villager.nitwit,tag=!stellarity.villager.has_job] at @s run function stellarity:mobs/villager/main

# Shulker Tools
execute as @a[predicate=stellarity:items/holding_any_shulker_tool] run effect give @s haste 2 0 true

execute as @a[scores={stellarity.items.flask_of_frost.duration=1..}] run scoreboard players remove @s stellarity.items.flask_of_frost.duration 1

execute if score #stellarity.dragon.ash_duration stellarity.misc matches 1.. run scoreboard players remove #stellarity.dragon.ash_duration stellarity.misc 1

schedule function stellarity:loops/1_second 1s
