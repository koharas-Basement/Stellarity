execute if entity @s[tag=stellarity.altar_of_the_light] run function stellarity:mechanics/altar_of_light/main
execute if entity @s[tag=stellarity.book_of_light.aura] as @a[distance=..5.5] run function stellarity:items/spellbooks/light/effects

scoreboard players reset @s stellarity.misc.loop.1s
