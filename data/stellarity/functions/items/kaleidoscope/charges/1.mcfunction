playsound stellarity:item.kaleidoscope.level_1 player @a ~ ~ ~ 1 1

playsound minecraft:entity.generic.explode player @a ~ ~ ~ 0.55 1
playsound minecraft:item.firecharge.use player @a ~ ~ ~ 1 1

particle end_rod ^ ^ ^ 0 0 0 0.08 10
particle flame ^ ^ ^ 0 0 0 0.08 17
particle firework ^ ^ ^ 0 0 0 0.08 10

execute unless entity @s[type=player,predicate=stellarity:items/holding_kaleidoscope] run function stellarity:items/kaleidoscope/charges/damage/1
