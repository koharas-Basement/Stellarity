## Fire
scoreboard players set #2 stellarity.misc 2
scoreboard players set #2s stellarity.misc 60
scoreboard players operation #fire stellarity.misc = #charge stellarity.misc
scoreboard players operation #fire stellarity.misc /= #2 stellarity.misc
scoreboard players operation #fire stellarity.misc += #2s stellarity.misc
# 50% of fire duration
function kohara:reduce_by_percent {percent:50,holder:"#fire",score:"stellarity.misc"}

execute store result entity @s Fire short 1 run scoreboard players get #fire stellarity.misc

## Damage
scoreboard players set #damage kohara.misc 80
scoreboard players operation #damage kohara.misc += #charge stellarity.misc
# 30% of discharge damage
function kohara:reduce_by_percent {percent:70,holder:"#damage",score:"stellarity.misc"}

tag @p[predicate=stellarity:items/holding/kaleidoscope] add kohara.attacker

function kohara:damage/calculate {armor_penetration:25,damage_boost_efficiency:50,damage_type:"stellarity:kaleidoscope",tag:"stellarity.damage.kaleidoscope"}
