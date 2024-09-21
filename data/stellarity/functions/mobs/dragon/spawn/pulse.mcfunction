scoreboard players add #wave stellarity.misc 1
execute rotated ~ 0 run particle dragon_breath ^ ^-0.9 ^18 ^ ^ ^-10000000000000 0.00000000000008 0 force @a[distance=..64]
execute unless score #wave stellarity.misc matches 100.. rotated ~3.6 ~ run function stellarity:mobs/dragon/spawn/pulse
execute if score #wave stellarity.misc matches 100.. run scoreboard players reset #wave stellarity.misc
