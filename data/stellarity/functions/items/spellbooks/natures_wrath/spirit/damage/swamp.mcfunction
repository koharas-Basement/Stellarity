execute as @e[type=marker,limit=1,sort=nearest,tag=stellarity.natures_wrath.spirit] at @s run function stellarity:items/spellbooks/natures_wrath/spirit/damage/as_marker/swamp

scoreboard players set #damage kohara.misc 60

effect give @s slowness 5 0 true

# Extra strong knockback
execute unless entity @s[type=player] run function stellarity:items/spellbooks/natures_wrath/spirit/damage/swamp_knockback

function kohara:damage/calculate {armor_penetration:20,damage_boost_efficiency:0,damage_type:"stellarity:natures_wrath",tag:"stellarity.damage.natures_wrath"}
