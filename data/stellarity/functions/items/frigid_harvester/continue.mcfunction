# Add extra damage
scoreboard players operation #damage kohara.misc += #damage_extra stellarity.misc

# Rounding
scoreboard players operation #temp stellarity.misc = #damage kohara.misc
scoreboard players operation #temp stellarity.misc /= #100 stellarity.misc

scoreboard players operation #temp stellarity.misc *= #100 stellarity.misc
scoreboard players operation #temp2 stellarity.misc = #damage kohara.misc

scoreboard players operation #temp2 stellarity.misc -= #temp stellarity.misc

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

# Custom model data depending on extra damage
execute if score #damage kohara.misc matches 0..299 run \
	data modify storage stellarity:temp aery_sword.cmd set value 90001
execute if score #damage kohara.misc matches 300..599 run \
	data modify storage stellarity:temp aery_sword.cmd set value 90002
execute if score #damage kohara.misc matches 600..899 run \
	data modify storage stellarity:temp aery_sword.cmd set value 90003
execute if score #damage kohara.misc matches 900..1699 run \
	data modify storage stellarity:temp aery_sword.cmd set value 90004
execute if score #damage kohara.misc matches 1700.. run \
	data modify storage stellarity:temp aery_sword.cmd set value 90005

# Is fireproof?
data modify storage stellarity:temp aery_sword.fireproof set value 0b
execute if score #damage kohara.misc matches 600.. run data modify storage stellarity:temp aery_sword.fireproof set value 1b

# Visual and sound effects
execute anchored eyes positioned ^ ^ ^2.5 run function stellarity:items/frigid_harvester/effects/souls
execute if score #damage kohara.misc matches ..1699 run \
	function stellarity:items/frigid_harvester/effects/crack
	
scoreboard players operation #damage_int stellarity.misc = #damage kohara.misc
scoreboard players set #5 stellarity.misc 500
scoreboard players operation #damage_int stellarity.misc += #5 stellarity.misc

execute store result storage stellarity:temp aery_sword.damage_int int 0.01 run \
	scoreboard players get #damage_int stellarity.misc
execute store result storage stellarity:temp aery_sword.damage double 0.01 run \
	scoreboard players get #damage kohara.misc

# Advancement for getting +9 damage
execute if score #damage kohara.misc matches 900.. run \
	advancement grant @s only stellarity:exploration/max_out_aery_sword

data modify storage stellarity:temp aery_sword.lore set from entity @s SelectedItem.tag.display.Lore
data remove storage stellarity:temp aery_sword.lore[-1]
data remove storage stellarity:temp aery_sword.lore[-1]
data remove storage stellarity:temp aery_sword.lore[-1]

item modify entity @s weapon.mainhand stellarity:aery_sword_increase_damage

# Maxing out the Aery Sword
execute if score #damage kohara.misc matches 1700.. run \
	function stellarity:items/frigid_harvester/ultra_max_out
