scoreboard players add @s stellarity.items.aery_sword.kills.blaze.count 1

title @s[scores={stellarity.items.aery_sword.kills.blaze.count=1..4}] actionbar {"translate":"stellarity.items.weapons.frigid_harvester.ability.hint","feedback":"Your sword shakes while absorbing this soul...","color":"dark_purple"}

execute if score #damage stellarity.misc matches 14 anchored eyes positioned ^ ^ ^2.5 run function stellarity:items/frigid_harvester/effects/ability_absorb 

execute if score @s stellarity.items.aery_sword.kills.blaze.count matches 5 run function stellarity:items/frigid_harvester/abilities/unlock/frostburn/unlock
