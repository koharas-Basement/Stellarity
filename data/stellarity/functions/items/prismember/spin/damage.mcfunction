# Damage is set in 'spin/start', hence
# the 0% bonus efficiency

tag @p[predicate=stellarity:items/holding_prismember,distance=0.001..] add kohara.attacker

function kohara:damage/calculate {armor_penetration:50,damage_boost_efficiency:0,damage_type:"stellarity:prismember",tag:"stellarity.damage.prismember"}

# Prismatic Inferno
scoreboard players set #dot.damage stellarity.misc 15
scoreboard players set #dot.time stellarity.misc 60
scoreboard players set #dot.delay stellarity.misc 20

scoreboard players operation #dot.time stellarity.misc += #enchant stellarity.misc

scoreboard players set #19 stellarity.misc 19
scoreboard players operation #dot.time stellarity.misc += #19 stellarity.misc

function stellarity:utils/status_effects/prismatic_inferno/apply
