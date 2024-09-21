scoreboard players set #damage stellarity.misc 40
scoreboard players operation #damage stellarity.misc += #sweeping stellarity.misc

scoreboard players set #armor_penetration stellarity.misc 100
scoreboard players set #ignore_iframes stellarity.misc 1

tag @s add stellarity.damage.spirit_dagger

tag @p[predicate=stellarity:] add stellarity.damage.attacker

execute unless score #knockback stellarity.misc matches 0 run function stellarity:items/spirit_dagger/effects/knockback/apply
execute unless score #fire_aspect stellarity.misc matches 0 run function stellarity:items/spirit_dagger/effects/fire
execute unless score #bane stellarity.misc matches 0 if entity @s[type=#stellarity:arthropods] run function stellarity:items/spirit_dagger/effects/bane_of_spiders

function stellarity:utils/damage/start
