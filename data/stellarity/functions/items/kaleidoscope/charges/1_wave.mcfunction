scoreboard players add #wave stellarity.misc 1
execute rotated ~22.5 0 run particle end_rod ^ ^ ^ ^ ^ ^10000000000000 0.00000000000002 0 force @a[distance=..64]
execute unless score #wave stellarity.misc matches 16.. rotated ~22.5 ~ run function stellarity:items/kaleidoscope/charges/1_wave
execute if score #wave stellarity.misc matches 16.. run scoreboard players reset #wave stellarity.misc
