scoreboard players set @s stellarity.items.spellbook.updraft.cooldown 2147483647

tag @s add stellarity.book_of_updraft.animation

effect give @s levitation 1 23 true

scoreboard players reset @s stellarity.items.spellbook.updraft.animation

function stellarity:items/spellbooks/effects_all
playsound minecraft:entity.bat.takeoff player @a[distance=0..] ~ ~ ~ 0.8 1
playsound minecraft:item.trident.riptide_1 player @a[distance=0..] ~ ~ ~ 1 1