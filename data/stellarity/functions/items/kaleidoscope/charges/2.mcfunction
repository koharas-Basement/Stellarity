scoreboard players set #2 stellarity.misc 2
scoreboard players operation #fire stellarity.misc = #charge stellarity.misc
execute store result entity @s Fire short 1 run scoreboard players get #fire stellarity.misc

playsound stellarity:item.kaleidoscope.level_2 player @a[distance=0..] ~ ~ ~ 1 1

playsound minecraft:entity.generic.explode player @a[distance=0..] ~ ~ ~ 1 0.9
playsound minecraft:item.firecharge.use player @a[distance=0..] ~ ~ ~ 1 0.8
playsound minecraft:block.respawn_anchor.deplete player @a[distance=0..] ~ ~ ~ 1 0.8
playsound minecraft:entity.lightning_bolt.thunder player @a[distance=0..] ~ ~ ~ 0.5 1

particle end_rod ^ ^ ^ 0 0 0 0.147 36
particle flame ^ ^ ^ 0 0 0 0.147 64
particle firework ^ ^ ^ 0 0 0 0.147 36
particle crit ^ ^ ^ 0 0 0 0.8 48
particle explosion ^ ^ ^
particle flash ^ ^ ^
particle cloud ^ ^ ^ 0 0 0 0.147 48


execute positioned ^ ^ ^ run function stellarity:items/kaleidoscope/charges/2_wave

function stellarity:items/kaleidoscope/charges/damage/2
execute as @e[type=!#kohara:invalid_targets,predicate=!stellarity:items/holding_kaleidoscope,distance=0.1..0.8] run function stellarity:items/kaleidoscope/charges/splash/2/inner
execute as @e[type=!#kohara:invalid_targets,predicate=!stellarity:items/holding_kaleidoscope,distance=0.81..1.6] run function stellarity:items/kaleidoscope/charges/splash/2/middle
execute as @e[type=!#kohara:invalid_targets,predicate=!stellarity:items/holding_kaleidoscope,distance=1.61..2.4] run function stellarity:items/kaleidoscope/charges/splash/2/outer

scoreboard players reset @p[predicate=stellarity:items/holding_kaleidoscope] stellarity.items.kaleidoscope.charge
