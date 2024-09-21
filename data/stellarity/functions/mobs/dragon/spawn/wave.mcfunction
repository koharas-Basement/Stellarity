scoreboard players add #wave stellarity.misc 1
execute rotated ~10 0 run particle dragon_breath ^ ^1 ^ ^ ^ ^10000000000000 0.00000000000007 0 force @a[distance=..64]
execute rotated ~15 0 run particle dragon_breath ^ ^1 ^ ^ ^ ^10000000000000 0.00000000000004 0 force @a[distance=..64]
execute unless score #wave stellarity.misc matches 144.. rotated ~2.5 ~ run function stellarity:mobs/dragon/spawn/wave
execute if score #wave stellarity.misc matches 144.. run scoreboard players reset #wave stellarity.misc
