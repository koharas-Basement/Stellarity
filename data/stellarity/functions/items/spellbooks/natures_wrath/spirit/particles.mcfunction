execute if entity @s[tag=stellarity.natures_wrath.spirit.normal] run function stellarity:items/spellbooks/natures_wrath/spirit/particles/normal
execute if entity @s[tag=stellarity.natures_wrath.spirit.fire] run function stellarity:items/spellbooks/natures_wrath/spirit/particles/fire
execute if entity @s[tag=stellarity.natures_wrath.spirit.snow] run function stellarity:items/spellbooks/natures_wrath/spirit/particles/snow
execute if entity @s[tag=stellarity.natures_wrath.spirit.ocean] run function stellarity:items/spellbooks/natures_wrath/spirit/particles/ocean
execute if entity @s[tag=stellarity.natures_wrath.spirit.mountain] run function stellarity:items/spellbooks/natures_wrath/spirit/particles/mountain
execute if entity @s[tag=stellarity.natures_wrath.spirit.jungle] run function stellarity:items/spellbooks/natures_wrath/spirit/particles/jungle
execute if entity @s[tag=stellarity.natures_wrath.spirit.forest] run function stellarity:items/spellbooks/natures_wrath/spirit/particles/forest
execute if entity @s[tag=stellarity.natures_wrath.spirit.sculk] run function stellarity:items/spellbooks/natures_wrath/spirit/particles/sculk
execute if entity @s[tag=stellarity.natures_wrath.spirit.swamp] run function stellarity:items/spellbooks/natures_wrath/spirit/particles/swamp
execute if entity @s[tag=stellarity.natures_wrath.spirit.hallowed] run function stellarity:items/spellbooks/natures_wrath/spirit/particles/hallowed

scoreboard players add @s stellarity.misc4 1

execute if score @s stellarity.misc4 matches 1 rotated ~90 ~ run \
	particle minecraft:dust_color_transition 1 1 1 1 0.353 0.525 0.769 ^ ^0.33 ^ 0 0 0 0 1 force @a[distance=..96]
execute if score @s stellarity.misc4 matches 2 rotated ~90 ~30 run \
	particle minecraft:dust_color_transition 1 1 1 1 0.353 0.525 0.769 ^ ^0.33 ^ 0 0 0 0 1 force @a[distance=..96]
execute if score @s stellarity.misc4 matches 3 rotated ~90 ~60 run \
	particle minecraft:dust_color_transition 1 1 1 1 0.353 0.525 0.769 ^ ^0.33 ^ 0 0 0 0 1 force @a[distance=..96]
execute if score @s stellarity.misc4 matches 4 rotated ~90 ~90 run \
	particle minecraft:dust_color_transition 1 1 1 1 0.353 0.525 0.769 ^ ^0.33 ^ 0 0 0 0 1 force @a[distance=..96]
execute if score @s stellarity.misc4 matches 5 rotated ~90 ~120 run \
	particle minecraft:dust_color_transition 1 1 1 1 0.353 0.525 0.769 ^ ^0.33 ^ 0 0 0 0 1 force @a[distance=..96]
execute if score @s stellarity.misc4 matches 6 rotated ~90 ~150 run \
	particle minecraft:dust_color_transition 1 1 1 1 0.353 0.525 0.769 ^ ^0.33 ^ 0 0 0 0 1 force @a[distance=..96]
execute if score @s stellarity.misc4 matches 7 rotated ~90 ~180 run \
	particle minecraft:dust_color_transition 1 1 1 1 0.353 0.525 0.769 ^ ^0.33 ^ 0 0 0 0 1 force @a[distance=..96]
execute if score @s stellarity.misc4 matches 8 rotated ~90 ~-150 run \
	particle minecraft:dust_color_transition 1 1 1 1 0.353 0.525 0.769 ^ ^0.33 ^ 0 0 0 0 1 force @a[distance=..96]
execute if score @s stellarity.misc4 matches 9 rotated ~90 ~-120 run \
	particle minecraft:dust_color_transition 1 1 1 1 0.353 0.525 0.769 ^ ^0.33 ^ 0 0 0 0 1 force @a[distance=..96]
execute if score @s stellarity.misc4 matches 10 rotated ~90 ~-90 run \
	particle minecraft:dust_color_transition 1 1 1 1 0.353 0.525 0.769 ^ ^0.33 ^ 0 0 0 0 1 force @a[distance=..96]
execute if score @s stellarity.misc4 matches 11 rotated ~90 ~-60 run \
	particle minecraft:dust_color_transition 1 1 1 1 0.353 0.525 0.769 ^ ^0.33 ^ 0 0 0 0 1 force @a[distance=..96]
execute if score @s stellarity.misc4 matches 12 rotated ~90 ~-30 run \
	particle minecraft:dust_color_transition 1 1 1 1 0.353 0.525 0.769 ^ ^0.33 ^ 0 0 0 0 1 force @a[distance=..96]

execute if score @s stellarity.misc4 matches 1 rotated ~90 ~ run \
	particle minecraft:dust_color_transition 1 1 1 1 0.353 0.525 0.769 ^ ^-0.1657 ^0.2854 0 0 0 0 1 force @a[distance=..96]
execute if score @s stellarity.misc4 matches 2 rotated ~90 ~30 run \
	particle minecraft:dust_color_transition 1 1 1 1 0.353 0.525 0.769 ^ ^-0.1657 ^0.2854 0 0 0 0 1 force @a[distance=..96]
execute if score @s stellarity.misc4 matches 3 rotated ~90 ~60 run \
	particle minecraft:dust_color_transition 1 1 1 1 0.353 0.525 0.769 ^ ^-0.1657 ^0.2854 0 0 0 0 1 force @a[distance=..96]
execute if score @s stellarity.misc4 matches 4 rotated ~90 ~90 run \
	particle minecraft:dust_color_transition 1 1 1 1 0.353 0.525 0.769 ^ ^-0.1657 ^0.2854 0 0 0 0 1 force @a[distance=..96]
execute if score @s stellarity.misc4 matches 5 rotated ~90 ~120 run \
	particle minecraft:dust_color_transition 1 1 1 1 0.353 0.525 0.769 ^ ^-0.1657 ^0.2854 0 0 0 0 1 force @a[distance=..96]
execute if score @s stellarity.misc4 matches 6 rotated ~90 ~150 run \
	particle minecraft:dust_color_transition 1 1 1 1 0.353 0.525 0.769 ^ ^-0.1657 ^0.2854 0 0 0 0 1 force @a[distance=..96]
execute if score @s stellarity.misc4 matches 7 rotated ~90 ~180 run \
	particle minecraft:dust_color_transition 1 1 1 1 0.353 0.525 0.769 ^ ^-0.1657 ^0.2854 0 0 0 0 1 force @a[distance=..96]
execute if score @s stellarity.misc4 matches 8 rotated ~90 ~-150 run \
	particle minecraft:dust_color_transition 1 1 1 1 0.353 0.525 0.769 ^ ^-0.1657 ^0.2854 0 0 0 0 1 force @a[distance=..96]
execute if score @s stellarity.misc4 matches 9 rotated ~90 ~-120 run \
	particle minecraft:dust_color_transition 1 1 1 1 0.353 0.525 0.769 ^ ^-0.1657 ^0.2854 0 0 0 0 1 force @a[distance=..96]
execute if score @s stellarity.misc4 matches 10 rotated ~90 ~-90 run \
	particle minecraft:dust_color_transition 1 1 1 1 0.353 0.525 0.769 ^ ^-0.1657 ^0.2854 0 0 0 0 1 force @a[distance=..96]
execute if score @s stellarity.misc4 matches 11 rotated ~90 ~-60 run \
	particle minecraft:dust_color_transition 1 1 1 1 0.353 0.525 0.769 ^ ^-0.1657 ^0.2854 0 0 0 0 1 force @a[distance=..96]
execute if score @s stellarity.misc4 matches 12 rotated ~90 ~-30 run \
	particle minecraft:dust_color_transition 1 1 1 1 0.353 0.525 0.769 ^ ^-0.1657 ^0.2854 0 0 0 0 1 force @a[distance=..96]

execute if score @s stellarity.misc4 matches 1 rotated ~90 ~ run \
	particle minecraft:dust_color_transition 1 1 1 1 0.353 0.525 0.769 ^ ^-0.1657 ^-0.2854 0 0 0 0 1 force @a[distance=..96]
execute if score @s stellarity.misc4 matches 2 rotated ~90 ~30 run \
	particle minecraft:dust_color_transition 1 1 1 1 0.353 0.525 0.769 ^ ^-0.1657 ^-0.2854 0 0 0 0 1 force @a[distance=..96]
execute if score @s stellarity.misc4 matches 3 rotated ~90 ~60 run \
	particle minecraft:dust_color_transition 1 1 1 1 0.353 0.525 0.769 ^ ^-0.1657 ^-0.2854 0 0 0 0 1 force @a[distance=..96]
execute if score @s stellarity.misc4 matches 4 rotated ~90 ~90 run \
	particle minecraft:dust_color_transition 1 1 1 1 0.353 0.525 0.769 ^ ^-0.1657 ^-0.2854 0 0 0 0 1 force @a[distance=..96]
execute if score @s stellarity.misc4 matches 5 rotated ~90 ~120 run \
	particle minecraft:dust_color_transition 1 1 1 1 0.353 0.525 0.769 ^ ^-0.1657 ^-0.2854 0 0 0 0 1 force @a[distance=..96]
execute if score @s stellarity.misc4 matches 6 rotated ~90 ~150 run \
	particle minecraft:dust_color_transition 1 1 1 1 0.353 0.525 0.769 ^ ^-0.1657 ^-0.2854 0 0 0 0 1 force @a[distance=..96]
execute if score @s stellarity.misc4 matches 7 rotated ~90 ~180 run \
	particle minecraft:dust_color_transition 1 1 1 1 0.353 0.525 0.769 ^ ^-0.1657 ^-0.2854 0 0 0 0 1 force @a[distance=..96]
execute if score @s stellarity.misc4 matches 8 rotated ~90 ~-150 run \
	particle minecraft:dust_color_transition 1 1 1 1 0.353 0.525 0.769 ^ ^-0.1657 ^-0.2854 0 0 0 0 1 force @a[distance=..96]
execute if score @s stellarity.misc4 matches 9 rotated ~90 ~-120 run \
	particle minecraft:dust_color_transition 1 1 1 1 0.353 0.525 0.769 ^ ^-0.1657 ^-0.2854 0 0 0 0 1 force @a[distance=..96]
execute if score @s stellarity.misc4 matches 10 rotated ~90 ~-90 run \
	particle minecraft:dust_color_transition 1 1 1 1 0.353 0.525 0.769 ^ ^-0.1657 ^-0.2854 0 0 0 0 1 force @a[distance=..96]
execute if score @s stellarity.misc4 matches 11 rotated ~90 ~-60 run \
	particle minecraft:dust_color_transition 1 1 1 1 0.353 0.525 0.769 ^ ^-0.1657 ^-0.2854 0 0 0 0 1 force @a[distance=..96]
execute if score @s stellarity.misc4 matches 12 rotated ~90 ~-30 run \
	particle minecraft:dust_color_transition 1 1 1 1 0.353 0.525 0.769 ^ ^-0.1657 ^-0.2854 0 0 0 0 1 force @a[distance=..96]

execute if score @s stellarity.misc4 matches 12 run scoreboard players reset @s stellarity.misc4
