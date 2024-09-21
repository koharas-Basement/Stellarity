advancement revoke @s only stellarity:events/items/crest/attack

attribute @s generic.attack_damage modifier remove 09ba2f70-0cdf-4c47-b2c9-9ccf0ef901fb

title @s actionbar " "

execute at @s anchored eyes positioned ^ ^ ^2 run function stellarity:items/crest_of_the_end/sfx/choose

scoreboard players reset @s stellarity.items.crest.bonus_dmg
scoreboard players reset @s stellarity.items.crest.time
