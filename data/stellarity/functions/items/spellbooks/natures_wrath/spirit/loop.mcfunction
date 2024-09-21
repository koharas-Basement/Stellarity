scoreboard players add @s stellarity.misc 1
execute if score @s stellarity.misc matches 1 run function stellarity:items/spellbooks/natures_wrath/spirit/homing/calculate_duration

execute unless block ^ ^ ^ #kohara:non_solid positioned ^ ^ ^-1 run function stellarity:items/spellbooks/natures_wrath/spirit/timeout

execute anchored eyes run function stellarity:items/spellbooks/natures_wrath/spirit/move

execute if score @s stellarity.misc matches 2.. if entity @e[type=!#kohara:invalid_targets_with_player,type=!wolf,type=!cat,distance=..0.65] run function stellarity:items/spellbooks/natures_wrath/spirit/damage
# Mobs with taller hitboxes really screw things up
execute if score @s stellarity.misc matches 2.. positioned ~ ~-1 ~ if entity @e[type=!#kohara:invalid_targets_with_player,type=!wolf,type=!cat,distance=..0.65] positioned ~ ~1 ~ run function stellarity:items/spellbooks/natures_wrath/spirit/damage
execute if score @s stellarity.misc matches 2.. positioned ~ ~-2 ~ if entity @e[type=!#kohara:invalid_targets_with_player,type=!wolf,type=!cat,distance=..0.65] positioned ~ ~2 ~ run function stellarity:items/spellbooks/natures_wrath/spirit/damage
execute if score @s stellarity.misc matches 2.. positioned ~ ~-3 ~ if entity @e[type=!#kohara:invalid_targets_with_player,type=!wolf,type=!cat,distance=..0.65] positioned ~ ~3 ~ run function stellarity:items/spellbooks/natures_wrath/spirit/damage

execute if score @s stellarity.misc matches 2.. run function stellarity:items/spellbooks/natures_wrath/spirit/particles

execute if score @s stellarity.misc matches 80.. run function stellarity:items/spellbooks/natures_wrath/spirit/timeout
