playsound stellarity:item.kaleidoscope.level_3 player @a ~ ~ ~ 1 1

playsound minecraft:entity.generic.explode player @a ~ ~ ~ 1 0.8
playsound minecraft:item.firecharge.use player @a ~ ~ ~ 1 0.6

particle end_rod ^ ^ ^ 0 0 0 0.3 45
particle flame ^ ^ ^ 0 0 0 0.3 68
particle firework ^ ^ ^ 0 0 0 0.3 45
particle explosion ^ ^ ^
particle flash ^ ^ ^

execute unless entity @s[type=player,predicate=stellarity:items/holding_kaleidoscope] run function stellarity:items/kaleidoscope/charges/damage/3
execute as @e[type=!#stellarity:invalid_targets,predicate=!stellarity:items/holding_kaleidoscope,distance=0.1..1.4] run function stellarity:items/kaleidoscope/charges/splash/3/inner
execute as @e[type=!#stellarity:invalid_targets,predicate=!stellarity:items/holding_kaleidoscope,distance=1.41..2.8] run function stellarity:items/kaleidoscope/charges/splash/3/middle
execute as @e[type=!#stellarity:invalid_targets,predicate=!stellarity:items/holding_kaleidoscope,distance=2.81..4.2] run function stellarity:items/kaleidoscope/charges/splash/3/outer