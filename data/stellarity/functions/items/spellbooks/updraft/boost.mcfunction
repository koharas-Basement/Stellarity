scoreboard players set @s stellarity.items.spellbook.updraft.cooldown 2147483647

tag @s add stellarity.book_of_updraft.animation

execute if data entity @s {FallFlying:0b} run effect give @s levitation 1 23 true
execute if data entity @s {FallFlying:1b} run effect give @s levitation 1 33 true

scoreboard players reset @s stellarity.items.spellbook.updraft.animation

function stellarity:items/spellbooks/effects_all
playsound minecraft:entity.shulker.shoot player @a ~ ~ ~ 0.33 1
playsound minecraft:entity.bat.takeoff player @a ~ ~ ~ 0.12 1
