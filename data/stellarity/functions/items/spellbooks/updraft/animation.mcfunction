scoreboard players add @s stellarity.items.spellbook.updraft.animation 1

execute if score @s stellarity.items.spellbook.updraft.animation matches ..20 run particle minecraft:cloud ~ ~ ~ 0 0 0 0.05 3 force @a[distance=..48]

execute if score @s stellarity.items.spellbook.updraft.animation matches 30.. run particle end_rod ~ ~1 ~ .3 .55 .3 0 2 force

execute if score @s stellarity.items.spellbook.updraft.animation matches 30 run effect give @s levitation 7 248 true
execute if score @s stellarity.items.spellbook.updraft.animation matches 30 run effect give @s levitation 6 251 true
execute if score @s stellarity.items.spellbook.updraft.animation matches 30 run effect give @s levitation 5 252 true
execute if score @s stellarity.items.spellbook.updraft.animation matches 30 run effect give @s levitation 4 253 true
execute if score @s stellarity.items.spellbook.updraft.animation matches 30 run effect give @s levitation 3 254 true

execute if score @s stellarity.items.spellbook.updraft.animation matches 170.. run effect give @s slow_falling infinite 0 true
execute if score @s stellarity.items.spellbook.updraft.animation matches 5.. if data entity @s {OnGround:1b} run function stellarity:items/spellbooks/updraft/animation_finish
execute if predicate stellarity:utils/player/is_sneaking run function stellarity:items/spellbooks/updraft/animation_finish
