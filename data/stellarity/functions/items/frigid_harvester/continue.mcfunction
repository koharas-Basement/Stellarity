# Add extra damage
scoreboard players operation #damage stellarity.misc += #damage_extra stellarity.misc
# But also cap it at 14
execute if score #damage stellarity.misc matches 1400.. run scoreboard players set #damage stellarity.misc 1400

# Visual and sound effects
execute anchored eyes positioned ^ ^ ^2.5 run function stellarity:items/frigid_harvester/effects/souls
execute unless score #damage stellarity.misc matches 1400.. run \
	function stellarity:items/frigid_harvester/effects/crack/crack

## Item modifier part thingy
# Make the sword fireproof after reaching 6 extra damage (11 total)
data modify storage stellarity:temp aery_sword.fireproof set value 0b
execute if score #damage stellarity.misc matches 600.. run data modify storage stellarity:temp aery_sword.fireproof set value 1b
# Custom model data depending on extra damage
# Levlel 0 (Base)
execute if score #damage stellarity.misc matches 0..299 run \
	data modify storage stellarity:temp aery_sword.cmd set value 90001
# Level 1
execute if score #damage stellarity.misc matches 300..599 run \
	data modify storage stellarity:temp aery_sword.cmd set value 90002
# Level 2
execute if score #damage stellarity.misc matches 600..899 run \
	data modify storage stellarity:temp aery_sword.cmd set value 90003
# Level 3
execute if score #damage stellarity.misc matches 900..1399 run \
	data modify storage stellarity:temp aery_sword.cmd set value 90004
# Level 4 (Maxed)
execute if score #damage stellarity.misc matches 1400.. run \
	data modify storage stellarity:temp aery_sword.cmd set value 90005
# Probably one of the least efficient ways to make the number after the coma
# Rounding
scoreboard players operation #temp stellarity.misc = #damage stellarity.misc
scoreboard players operation #temp stellarity.misc /= #100 stellarity.misc
scoreboard players operation #temp stellarity.misc *= #100 stellarity.misc
scoreboard players operation #temp2 stellarity.misc = #damage stellarity.misc
scoreboard players operation #temp2 stellarity.misc -= #temp stellarity.misc
# Choosing
execute if score #temp2 stellarity.misc matches 0..9 run \
	data modify storage stellarity:temp aery_sword.damage_round set value ""
execute if score #temp2 stellarity.misc matches 10..19 run \
	data modify storage stellarity:temp aery_sword.damage_round set value ".1"
execute if score #temp2 stellarity.misc matches 20..29 run \
	data modify storage stellarity:temp aery_sword.damage_round set value ".2"
execute if score #temp2 stellarity.misc matches 30..39 run \ 
	data modify storage stellarity:temp aery_sword.damage_round set value ".3"
execute if score #temp2 stellarity.misc matches 40..49 run \
	data modify storage stellarity:temp aery_sword.damage_round set value ".4"
execute if score #temp2 stellarity.misc matches 50..59 run \
	data modify storage stellarity:temp aery_sword.damage_round set value ".5"
execute if score #temp2 stellarity.misc matches 60..69 run \
	data modify storage stellarity:temp aery_sword.damage_round set value ".6"
execute if score #temp2 stellarity.misc matches 70..79 run \
	data modify storage stellarity:temp aery_sword.damage_round set value ".7"
execute if score #temp2 stellarity.misc matches 80..89 run \
	data modify storage stellarity:temp aery_sword.damage_round set value ".8"
execute if score #temp2 stellarity.misc matches 90..99 run \
	data modify storage stellarity:temp aery_sword.damage_round set value ".9"
# Add 5 to the damage display (for base damage)
scoreboard players operation #damage_int stellarity.misc = #damage stellarity.misc
scoreboard players set #5 stellarity.misc 500
scoreboard players operation #damage_int stellarity.misc += #5 stellarity.misc
# Translate it into the storage
# 'aery_sword.damage_int' is the number before the coma in the damage display
# 'aery_sword.damage' is the actual extra damage stat used in the item NBT
execute store result storage stellarity:temp aery_sword.damage_int int 0.01 run \
	scoreboard players get #damage_int stellarity.misc
execute store result storage stellarity:temp aery_sword.damage double 0.01 run \
	scoreboard players get #damage stellarity.misc
# Edit lore (damage part)
# The 3 last lines are added back directly by the item modifier
data modify storage stellarity:temp aery_sword.lore set from storage stellarity:temp aery_sword.item.display.Lore
data remove storage stellarity:temp aery_sword.lore[-1]
data remove storage stellarity:temp aery_sword.lore[-1]
data remove storage stellarity:temp aery_sword.lore[-1]

item modify entity @s weapon.mainhand stellarity:aery_sword_increase_damage

# Advancement for getting +9 damage
execute if score #damage stellarity.misc matches 900.. run \
	advancement grant @s only stellarity:exploration/max_out_aery_sword

# Maxing out the Harvester
execute if score #damage stellarity.misc matches 1400.. run \
	function stellarity:items/frigid_harvester/ultra_max_out
