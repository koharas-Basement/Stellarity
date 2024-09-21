execute store result score #difficulty stellarity.misc run difficulty

execute unless predicate stellarity:mobs/eol/is_daytime if score #difficulty stellarity.misc matches 1 run scoreboard players set #damage kohara.misc 110
execute unless predicate stellarity:mobs/eol/is_daytime if score #difficulty stellarity.misc matches 2 run scoreboard players set #damage kohara.misc 130
execute unless predicate stellarity:mobs/eol/is_daytime if score #difficulty stellarity.misc matches 3 run scoreboard players set #damage kohara.misc 150

execute if predicate stellarity:mobs/eol/is_daytime if score #difficulty stellarity.misc matches 1 run scoreboard players set #damage kohara.misc 140
execute if predicate stellarity:mobs/eol/is_daytime if score #difficulty stellarity.misc matches 2 run scoreboard players set #damage kohara.misc 160
execute if predicate stellarity:mobs/eol/is_daytime if score #difficulty stellarity.misc matches 3 run scoreboard players set #damage kohara.misc 180

tag @e[type=marker,limit=1,sort=nearest] add kohara.attacker

function kohara:damage/calculate {armor_penetration:0,damage_boost_efficiency:0,damage_type:"stellarity:eol/projectile",tag:"stellarity.damage.eol.ethereal_lance"}
