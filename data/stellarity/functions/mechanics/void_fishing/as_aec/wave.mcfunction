scoreboard players add #wave stellarity.misc 1
execute rotated ~10 0 run particle dragon_breath ^ ^ ^ ^ ^ ^10000000000000 0.0000000000000264 0 force @a[distance=..64]
execute rotated ~15 0 run particle dragon_breath ^ ^ ^ ^ ^ ^10000000000000 0.0000000000000164 0 force @a[distance=..64]
execute unless score #wave stellarity.misc matches 36.. rotated ~10 ~ run function stellarity:mechanics/void_fishing/as_aec/wave
execute if score #wave stellarity.misc matches 36.. run scoreboard players reset #wave stellarity.misc
