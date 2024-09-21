tag @s remove stellarity.natures_wrath.homing_target

execute store result score #count stellarity.misc if entity @e[type=!#kohara:invalid_targets,tag=stellarity.natures_wrath.homing_target]
execute if score #count stellarity.misc matches 0 run team empty stellarity.homing_targets

effect clear @s glowing
