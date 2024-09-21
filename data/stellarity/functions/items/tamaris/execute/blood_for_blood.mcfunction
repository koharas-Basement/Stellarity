# Yes, that's 999 damage...
scoreboard players set #damage kohara.misc 9990

tag @p[predicate=stellarity:items/holding/tamaris] add kohara.attacker

# ...with 100% armor penetration
function kohara:damage/calculate {armor_penetration:100,damage_boost_efficiency:0,damage_type:"kohara:armor_piercing",tag:"stellarity.damage.tamaris"}
