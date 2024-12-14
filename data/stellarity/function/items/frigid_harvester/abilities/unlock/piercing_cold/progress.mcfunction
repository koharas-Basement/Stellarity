scoreboard players add @s stellarity.items.aery_sword.kills.witch.count 1

title @s[scores={stellarity.items.aery_sword.kills.witch.count=1..2}] actionbar {"translate":"stellarity.items.weapons.frigid_harvester.ability.hint","fallback":"Your sword shakes while absorbing this soul...","color":"dark_purple"}

execute if score #damage_rounded stellarity.misc matches 12 anchored eyes positioned ^ ^ ^2.5 run function stellarity:items/frigid_harvester/effects/ability_absorb

execute if score @s stellarity.items.aery_sword.kills.witch.count matches 3 run function stellarity:items/frigid_harvester/abilities/unlock/piercing_cold/unlock
