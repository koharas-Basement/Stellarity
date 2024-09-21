tp @s ~ ~ ~ ~2.5 ~

particle end_rod ^ ^ ^4.5 0 0 0 0 1 normal
particle dust 1 0.867 0 1 ^ ^ ^4.5 0 0 0 0 2 force @a[distance=..32]

particle end_rod ^ ^ ^-4.5 0 0 0 0 1 normal
particle dust 1 0.867 0 1 ^ ^ ^-4.5 0 0 0 0 2 force @a[distance=..32]

particle end_rod ^4.5 ^ ^ 0 0 0 0 1 normal
particle dust 1 0.867 0 1 ^4.5 ^ ^ 0 0 0 0 2 force @a[distance=..32]

particle end_rod ^-4.5 ^ ^ 0 0 0 0 1 normal
particle dust 1 0.867 0 1 ^-4.5 ^ ^ 0 0 0 0 2 force @a[distance=..32]

particle minecraft:firework ^ ^ ^ 3 0.2 3 0 1 normal

execute as @e[type=marker,limit=1,sort=nearest,tag=stellarity.book_of_light.aura_2] at @s run function stellarity:items/spellbooks/light/aura_secondary_loop

scoreboard players add @s stellarity.misc 1
execute if score @s stellarity.misc matches 341.. run kill @e[type=marker,limit=2,sort=nearest,tag=stellarity.book_of_light]
