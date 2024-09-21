#Mark the ray has having found an entity.

scoreboard players set #hit stellarity.misc 1

#Running custom commands since the entity was found.

tag @s add stellarity.natures_wrath.homing_target

scoreboard players set #time stellarity.misc 100
scoreboard players set #extra_time stellarity.misc 5
scoreboard players operation #extra_time stellarity.misc *= #upgrades stellarity.misc
scoreboard players operation #time stellarity.misc += #extra_time stellarity.misc

scoreboard players operation @s stellarity.items.spellbook.natures_wrath.homing_time = #time stellarity.misc

playsound minecraft:entity.arrow.hit_player player @p[predicate=stellarity:items/spellbooks/holding_natures_wrath] ~ ~ ~ 1000 0

team join stellarity.homing_targets @s
effect give @s glowing infinite 0 true
