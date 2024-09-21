execute store result score #difficulty stellarity.misc run difficulty

execute unless predicate stellarity:mobs/eol/is_daytime if score #difficulty stellarity.misc matches 1 run scoreboard players set #damage kohara.misc 230
execute unless predicate stellarity:mobs/eol/is_daytime if score #difficulty stellarity.misc matches 2 run scoreboard players set #damage kohara.misc 270
execute unless predicate stellarity:mobs/eol/is_daytime if score #difficulty stellarity.misc matches 3 run scoreboard players set #damage kohara.misc 310

execute if predicate stellarity:mobs/eol/is_daytime if score #difficulty stellarity.misc matches 1 run scoreboard players set #damage kohara.misc 250
execute if predicate stellarity:mobs/eol/is_daytime if score #difficulty stellarity.misc matches 2 run scoreboard players set #damage kohara.misc 290
execute if predicate stellarity:mobs/eol/is_daytime if score #difficulty stellarity.misc matches 3 run scoreboard players set #damage kohara.misc 330

tag @e[type=vindicator,limit=1,sort=nearest] add kohara.attacker

function kohara:damage/calculate {armor_penetration:0,damage_boost_efficiency:0,damage_type:"stellarity:eol/dash",tag:"stellarity.damage.eol.dash"}
