execute if entity @p[advancements={stellarity:events/items/spellbooks/natures_wrath/been_to_forest=true}] run data modify storage stellarity:temp "natures_wrath.spells" append value "forest"
execute if entity @p[advancements={stellarity:events/items/spellbooks/natures_wrath/been_to_nether=true}] run data modify storage stellarity:temp "natures_wrath.spells" append value "fire"
execute if entity @p[advancements={stellarity:events/items/spellbooks/natures_wrath/been_to_ocean=true}] run function stellarity:items/spellbooks/natures_wrath/spirit/extra_choose/ocean
execute if entity @p[advancements={stellarity:events/items/spellbooks/natures_wrath/been_to_mountains=true}] run function stellarity:items/spellbooks/natures_wrath/spirit/extra_choose/mountain
execute if entity @p[advancements={stellarity:events/items/spellbooks/natures_wrath/been_to_jungle=true}] run data modify storage stellarity:temp "natures_wrath.spells" append value "jungle"
execute if entity @p[advancements={stellarity:events/items/spellbooks/natures_wrath/been_to_snow=true}] run data modify storage stellarity:temp "natures_wrath.spells" append value "snow"
execute if entity @p[advancements={stellarity:events/items/spellbooks/natures_wrath/been_to_sculk=true}] run function stellarity:items/spellbooks/natures_wrath/spirit/extra_choose/sculk
execute if entity @p[advancements={stellarity:events/items/spellbooks/natures_wrath/been_to_hallow=true}] run function stellarity:items/spellbooks/natures_wrath/spirit/extra_choose/hallow
execute if entity @p[advancements={stellarity:events/items/spellbooks/natures_wrath/been_to_swamp=true}] run data modify storage stellarity:temp "natures_wrath.spells" append value "swamp"

execute store result score #length stellarity.misc run data get storage stellarity:temp "natures_wrath.spells"

scoreboard players set in stellarity.misc 1
scoreboard players operation in1 stellarity.misc = #length stellarity.misc
scoreboard players reset out stellarity.misc
execute unless score #length stellarity.misc matches 0 run function stellarity:utils/rng/range

execute if score #length stellarity.misc matches 1 run data modify storage stellarity:temp "natures_wrath.chosen" set value "normal"
execute if score out stellarity.misc matches 1 run data modify storage stellarity:temp "natures_wrath.chosen" set from storage stellarity:temp "natures_wrath.spells"[0]
execute if score out stellarity.misc matches 2 run data modify storage stellarity:temp "natures_wrath.chosen" set from storage stellarity:temp "natures_wrath.spells"[1] 
execute if score out stellarity.misc matches 3 run data modify storage stellarity:temp "natures_wrath.chosen" set from storage stellarity:temp "natures_wrath.spells"[2] 
execute if score out stellarity.misc matches 4 run data modify storage stellarity:temp "natures_wrath.chosen" set from storage stellarity:temp "natures_wrath.spells"[3] 
execute if score out stellarity.misc matches 5 run data modify storage stellarity:temp "natures_wrath.chosen" set from storage stellarity:temp "natures_wrath.spells"[4] 
execute if score out stellarity.misc matches 6 run data modify storage stellarity:temp "natures_wrath.chosen" set from storage stellarity:temp "natures_wrath.spells"[5] 
execute if score out stellarity.misc matches 7 run data modify storage stellarity:temp "natures_wrath.chosen" set from storage stellarity:temp "natures_wrath.spells"[6] 
execute if score out stellarity.misc matches 8 run data modify storage stellarity:temp "natures_wrath.chosen" set from storage stellarity:temp "natures_wrath.spells"[7] 
execute if score out stellarity.misc matches 9 run data modify storage stellarity:temp "natures_wrath.chosen" set from storage stellarity:temp "natures_wrath.spells"[8] 
execute if score out stellarity.misc matches 10 run data modify storage stellarity:temp "natures_wrath.chosen" set from storage stellarity:temp "natures_wrath.spells"[9] 
execute if score out stellarity.misc matches 11 run data modify storage stellarity:temp "natures_wrath.chosen" set from storage stellarity:temp "natures_wrath.spells"[10] 
execute if score out stellarity.misc matches 12 run data modify storage stellarity:temp "natures_wrath.chosen" set from storage stellarity:temp "natures_wrath.spells"[11] 
execute if score out stellarity.misc matches 13 run data modify storage stellarity:temp "natures_wrath.chosen" set from storage stellarity:temp "natures_wrath.spells"[12] 
execute if score out stellarity.misc matches 14 run data modify storage stellarity:temp "natures_wrath.chosen" set from storage stellarity:temp "natures_wrath.spells"[13] 
execute if score out stellarity.misc matches 15 run data modify storage stellarity:temp "natures_wrath.chosen" set from storage stellarity:temp "natures_wrath.spells"[14] 
execute if score out stellarity.misc matches 16 run data modify storage stellarity:temp "natures_wrath.chosen" set from storage stellarity:temp "natures_wrath.spells"[15] 
execute if score out stellarity.misc matches 17 run data modify storage stellarity:temp "natures_wrath.chosen" set from storage stellarity:temp "natures_wrath.spells"[16] 
execute if score out stellarity.misc matches 18 run data modify storage stellarity:temp "natures_wrath.chosen" set from storage stellarity:temp "natures_wrath.spells"[17] 
execute if score out stellarity.misc matches 19 run data modify storage stellarity:temp "natures_wrath.chosen" set from storage stellarity:temp "natures_wrath.spells"[18] 
execute if score out stellarity.misc matches 20 run data modify storage stellarity:temp "natures_wrath.chosen" set from storage stellarity:temp "natures_wrath.spells"[19] 
execute if score out stellarity.misc matches 21 run data modify storage stellarity:temp "natures_wrath.chosen" set from storage stellarity:temp "natures_wrath.spells"[20] 
execute if score out stellarity.misc matches 22 run data modify storage stellarity:temp "natures_wrath.chosen" set from storage stellarity:temp "natures_wrath.spells"[21] 

execute if data storage stellarity:temp {natures_wrath.chosen:"forest"} run tag @s add stellarity.natures_wrath.spirit.forest
execute if data storage stellarity:temp {natures_wrath.chosen:"fire"} run tag @s add stellarity.natures_wrath.spirit.fire
execute if data storage stellarity:temp {natures_wrath.chosen:"ocean"} run tag @s add stellarity.natures_wrath.spirit.ocean
execute if data storage stellarity:temp {natures_wrath.chosen:"mountains"} run tag @s add stellarity.natures_wrath.spirit.mountains
execute if data storage stellarity:temp {natures_wrath.chosen:"jungle"} run tag @s add stellarity.natures_wrath.spirit.jungle
execute if data storage stellarity:temp {natures_wrath.chosen:"snow"} run tag @s add stellarity.natures_wrath.spirit.snow
execute if data storage stellarity:temp {natures_wrath.chosen:"sculk"} run tag @s add stellarity.natures_wrath.spirit.sculk
execute if data storage stellarity:temp {natures_wrath.chosen:"hallow"} run tag @s add stellarity.natures_wrath.spirit.hallow
execute if data storage stellarity:temp {natures_wrath.chosen:"swamp"} run tag @s add stellarity.natures_wrath.spirit.swamp
