scoreboard players remove @s stellarity.items.spirit_dagger.effects_duration 2
execute if score @s stellarity.items.spirit_dagger.effects_duration matches 0 run function stellarity:items/spirit_dagger/effects/reset/reset
