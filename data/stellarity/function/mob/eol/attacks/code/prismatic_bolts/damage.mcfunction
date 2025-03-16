execute store result score #difficulty stellarity.misc run difficulty

execute unless predicate stellarity:mob/eol/is_daytime if score #difficulty stellarity.misc matches 1 run scoreboard players set #damage kohara.misc 100
execute unless predicate stellarity:mob/eol/is_daytime if score #difficulty stellarity.misc matches 2 run scoreboard players set #damage kohara.misc 120
execute unless predicate stellarity:mob/eol/is_daytime if score #difficulty stellarity.misc matches 3 run scoreboard players set #damage kohara.misc 140

execute if predicate stellarity:mob/eol/is_daytime if score #difficulty stellarity.misc matches 1 run scoreboard players set #damage kohara.misc 120
execute if predicate stellarity:mob/eol/is_daytime if score #difficulty stellarity.misc matches 2 run scoreboard players set #damage kohara.misc 140
execute if predicate stellarity:mob/eol/is_daytime if score #difficulty stellarity.misc matches 3 run scoreboard players set #damage kohara.misc 160

tag @n[type=marker] add kohara.attacker

function kohara:damage/calculate {armor_penetration:0,damage_boost_efficiency:0,ap_damage_type:"kohara:armor_piercing",damage_type:"stellarity:empress_of_light/projectile",tag:"stellarity.damage.eol.prismatic_bolts"}
