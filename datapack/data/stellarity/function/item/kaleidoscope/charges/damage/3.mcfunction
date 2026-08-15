scoreboard players set #effect.duration stellarity.misc 60
function stellarity:util/status_effects/holy_flames/apply

scoreboard players set #damage kohara.misc 300

tag @p[predicate=stellarity:item/holding/kaleidoscope] add kohara.attacker

function kohara:damage/calculate {armor_penetration:35,damage_boost_efficiency:50,ap_damage_type:"kohara:armor_piercing",damage_type:"stellarity:kaleidoscope",tag:"stellarity.damage.kaleidoscope"}
