execute if score @s stellarity.item.kaleidoscope.charge_progress matches 119 run playsound stellarity:item.kaleidoscope.ready player @s ~ ~ ~ 1 1
execute if score @s stellarity.item.kaleidoscope.charge_progress matches 119 run playsound minecraft:item.firecharge.use player @s ~ ~ ~ 1 2

execute unless score @s stellarity.item.kaleidoscope.charge_progress matches 120.. run scoreboard players add @s stellarity.item.kaleidoscope.charge_progress 1
execute if predicate stellarity:item/holding/trinket/radiant_jewel unless score @s stellarity.item.kaleidoscope.charge_progress matches 160.. run scoreboard players add @s stellarity.item.kaleidoscope.charge_progress 2

# charge = charge_progress / 1.2
  scoreboard players set #10 stellarity.misc 10
  scoreboard players set #12 stellarity.misc 12
  scoreboard players set #16 stellarity.misc 16
  scoreboard players operation @s stellarity.item.kaleidoscope.charge = @s stellarity.item.kaleidoscope.charge_progress
  scoreboard players operation @s stellarity.item.kaleidoscope.charge *= #10 stellarity.misc
  execute unless predicate stellarity:item/holding/trinket/radiant_jewel run scoreboard players operation @s stellarity.item.kaleidoscope.charge /= #12 stellarity.misc
  execute if predicate stellarity:item/holding/trinket/radiant_jewel run scoreboard players operation @s stellarity.item.kaleidoscope.charge /= #16 stellarity.misc

title @s actionbar [{"text":"•","color":"#EEEEEE"},{"text":" ⭐ ","color":"#FFCF37"},{"score":{"name": "@s","objective": "stellarity.item.kaleidoscope.charge"},"color":"#EEEEEE"},{"text":" ⭐ ","color":"#FFCF37"},{"text":"•","color":"#EEEEEE"}]

# Default
execute unless predicate stellarity:item/holding/trinket/radiant_jewel if score @s stellarity.item.kaleidoscope.charge matches 33..65 run function stellarity:item/kaleidoscope/holding_particles/1
execute unless predicate stellarity:item/holding/trinket/radiant_jewel if score @s stellarity.item.kaleidoscope.charge matches 66..99 run function stellarity:item/kaleidoscope/holding_particles/2
execute unless predicate stellarity:item/holding/trinket/radiant_jewel if score @s stellarity.item.kaleidoscope.charge matches 100 run function stellarity:item/kaleidoscope/holding_particles/3
execute unless predicate stellarity:item/holding/trinket/radiant_jewel if score @s stellarity.item.kaleidoscope.charge matches 101.. run scoreboard players set @s stellarity.item.kaleidoscope.charge_progress 120

# Default
execute if predicate stellarity:item/holding/trinket/radiant_jewel if score @s stellarity.item.kaleidoscope.charge matches 73..105 run function stellarity:item/kaleidoscope/holding_particles/1
execute if predicate stellarity:item/holding/trinket/radiant_jewel if score @s stellarity.item.kaleidoscope.charge matches 106..139 run function stellarity:item/kaleidoscope/holding_particles/2
execute if predicate stellarity:item/holding/trinket/radiant_jewel if score @s stellarity.item.kaleidoscope.charge matches 140 run function stellarity:item/kaleidoscope/holding_particles/3
