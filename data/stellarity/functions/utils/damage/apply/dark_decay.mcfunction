# Sound
damage @s[type=!player] 0.00000001 stellarity:dark_decay

data modify entity @s Silent set value 1b

execute if score #damage stellarity.misc matches 2048.. run damage @s 204.8 stellarity:dark_decay
execute if score #damage stellarity.misc matches 2048.. run scoreboard players remove #damage stellarity.misc 2048

execute if score #damage stellarity.misc matches 1024.. run damage @s 102.4 stellarity:dark_decay
execute if score #damage stellarity.misc matches 1024.. run scoreboard players remove #damage stellarity.misc 1024

execute if score #damage stellarity.misc matches 512.. run damage @s 51.2 stellarity:dark_decay
execute if score #damage stellarity.misc matches 512.. run scoreboard players remove #damage stellarity.misc 512

execute if score #damage stellarity.misc matches 256.. run damage @s 25.6 stellarity:dark_decay
execute if score #damage stellarity.misc matches 256.. run scoreboard players remove #damage stellarity.misc 256

execute if score #damage stellarity.misc matches 128.. run damage @s 12.8 stellarity:dark_decay
execute if score #damage stellarity.misc matches 128.. run scoreboard players remove #damage stellarity.misc 128

execute if score #damage stellarity.misc matches 64.. run damage @s 6.4 stellarity:dark_decay
execute if score #damage stellarity.misc matches 64.. run scoreboard players remove #damage stellarity.misc 64

execute if score #damage stellarity.misc matches 32.. run damage @s 3.2 stellarity:dark_decay
execute if score #damage stellarity.misc matches 32.. run scoreboard players remove #damage stellarity.misc 32

execute if score #damage stellarity.misc matches 16.. run damage @s 1.6 stellarity:dark_decay
execute if score #damage stellarity.misc matches 16.. run scoreboard players remove #damage stellarity.misc 16

execute if score #damage stellarity.misc matches 8.. run damage @s 0.8 stellarity:dark_decay
execute if score #damage stellarity.misc matches 8.. run scoreboard players remove #damage stellarity.misc 8

execute if score #damage stellarity.misc matches 4.. run damage @s 0.4 stellarity:dark_decay
execute if score #damage stellarity.misc matches 4.. run scoreboard players remove #damage stellarity.misc 4

execute if score #damage stellarity.misc matches 2.. run damage @s 0.2 stellarity:dark_decay
execute if score #damage stellarity.misc matches 2.. run scoreboard players remove #damage stellarity.misc 2

execute if score #damage stellarity.misc matches 1.. run damage @s 0.1 stellarity:dark_decay
execute if score #damage stellarity.misc matches 1.. run scoreboard players remove #damage stellarity.misc 1

# Sounds 
stopsound @a[distance=..16] player minecraft:entity.player.hurt
stopsound @a[distance=..16] player minecraft:entity.player.hurt_drown
stopsound @a[distance=..16] player minecraft:entity.player.hurt_freeze
stopsound @a[distance=..16] player minecraft:entity.player.hurt_on_fire
stopsound @a[distance=..16] player minecraft:entity.player.hurt_sweet_berry_bush
stopsound @a[distance=..16] player minecraft:enchant.thorns.hit

data modify entity @s Silent set value 0b

# Playing twice because Players
damage @s[type=player] 0.00000001 stellarity:dark_decay
