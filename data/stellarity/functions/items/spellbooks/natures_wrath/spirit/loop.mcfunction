scoreboard players add @s stellarity.misc 1
execute if score @s stellarity.misc matches 1 run function stellarity:items/spellbooks/natures_wrath/spirit/homing/calculate_duration

execute unless block ^ ^ ^ #kohara:non_solid run function stellarity:items/spellbooks/natures_wrath/spirit/timeout

execute anchored eyes run function stellarity:items/spellbooks/natures_wrath/spirit/move

execute if score @s stellarity.misc matches 2.. if entity @e[type=!#kohara:invalid_targets,type=!wolf,type=!cat,dx=0] run function stellarity:items/spellbooks/natures_wrath/spirit/damage/choose_type
execute if score @s stellarity.misc matches 2.. if entity @e[type=!#kohara:invalid_targets,type=!wolf,type=!cat,distance=..1] run function stellarity:items/spellbooks/natures_wrath/spirit/damage/choose_type_distance_based
execute if score @s stellarity.misc matches 2.. positioned ~ ~-1 ~ if entity @e[type=!#kohara:invalid_targets,type=!wolf,type=!cat,distance=..1] run function stellarity:items/spellbooks/natures_wrath/spirit/damage/choose_type_distance_based

execute if score @s stellarity.misc matches 2.. run function stellarity:items/spellbooks/natures_wrath/spirit/particles

execute if score @s stellarity.misc matches 100.. run function stellarity:items/spellbooks/natures_wrath/spirit/timeout
