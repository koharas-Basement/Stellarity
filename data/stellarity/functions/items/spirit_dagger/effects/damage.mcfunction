# Increases damage by 0.25/level of Sweeping Edge
scoreboard players set #damage kohara.misc 50
scoreboard players operation #damage kohara.misc += #sweeping stellarity.misc

tag @p[predicate=stellarity:items/spirit_dagger/holding_both] add kohara.attacker

# Deal extra knockback
execute unless score #knockback stellarity.misc matches 0 run function stellarity:items/spirit_dagger/effects/knockback/apply
# Set enemies on fire
execute unless score #fire_aspect stellarity.misc matches 0 run function stellarity:items/spirit_dagger/effects/fire
# Slow down arthropods
# Probably the most useless effect here
execute unless score #bane stellarity.misc matches 0 if entity @s[type=#kohara:arthropods] at @s run function stellarity:items/spirit_dagger/effects/bane_of_spiders

# Apply Jinx for 4 seconds
# +0.3 seconds/level of Sharpness
scoreboard players set #effect.duration stellarity.misc 80
scoreboard players set #extra stellarity.misc 6
scoreboard players operation #extra stellarity.misc *= #sharpness stellarity.misc
scoreboard players operation #effect.duration stellarity.misc += #extra stellarity.misc
scoreboard players set #effect.level stellarity.misc 1
function stellarity:utils/status_effects/jinx/apply

# Not using its own damage type, because it has 100% AP
function kohara:damage/calculate {armor_penetration:100,damage_boost_efficiency:60,damage_type:"kohara:armor_piercing",tag:"stellarity.damage.spirit_dagger"}
