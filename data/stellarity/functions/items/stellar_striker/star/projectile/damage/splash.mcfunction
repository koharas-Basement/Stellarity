scoreboard players set #damage kohara.misc 80

tag @p[predicate=stellarity:items/holding/stellar_striker/sword] add kohara.attacker

execute if score #casket stellarity.misc matches 0 run function kohara:damage/calculate {armor_penetration:40,damage_boost_efficiency:80,damage_type:"kohara:ignores_iframes",tag:"stellarity.damage.stellar_striker"}
execute if score #casket stellarity.misc matches 1 run function kohara:damage/calculate {armor_penetration:55,damage_boost_efficiency:80,damage_type:"kohara:ignores_iframes",tag:"stellarity.damage.stellar_striker"}
