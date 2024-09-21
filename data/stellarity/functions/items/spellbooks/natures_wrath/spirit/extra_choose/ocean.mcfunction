data modify storage stellarity:temp "natures_wrath.spells" append value "ocean"

scoreboard players set #in_water stellarity.misc 0
execute if block ~ ~ ~ water run scoreboard players set #in_water stellarity.misc 1
execute if block ~ 1 ~ water run scoreboard players set #in_water stellarity.misc 1
execute if score #in_water stellarity.misc matches 1 run data modify storage stellarity:temp "natures_wrath.spells" append value "ocean"
execute if score #in_water stellarity.misc matches 1 run data modify storage stellarity:temp "natures_wrath.spells" append value "ocean"
execute if score #in_water stellarity.misc matches 1 run data modify storage stellarity:temp "natures_wrath.spells" append value "ocean"
execute if score #in_water stellarity.misc matches 1 run data modify storage stellarity:temp "natures_wrath.spells" append value "ocean"
