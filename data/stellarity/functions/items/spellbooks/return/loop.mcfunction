# Age
scoreboard players add @s stellarity.misc 1

execute positioned ~ ~.1 ~ run function stellarity:items/spellbooks/return/ring

particle end_rod ^ ^0.3 ^3.5 0 0 0 0 1 force
particle end_rod ^ ^0.3 ^-3.5 0 0 0 0 1 force
particle end_rod ^-3.5 ^0.3 ^ 0 0 0 0 1 force
particle end_rod ^3.5 ^0.3 ^ 0 0 0 0 1 force

# Rotation
# Gets quicker and quicker
scoreboard players add @s stellarity.misc2 1
execute store result storage stellarity:temp book_of_return.rotation float 0.06 run scoreboard players get @s stellarity.misc2
function stellarity:items/spellbooks/return/rotate with storage stellarity:temp book_of_return

# Stop if player moved
execute unless entity @a[distance=..0.1] run function stellarity:items/spellbooks/return/stop

execute if score @s stellarity.misc matches ..20 run particle enchant ~ ~1.2 ~ 0 0 0 1.5 1 force
execute if score @s stellarity.misc matches 21..40 run particle enchant ~ ~1.2 ~ 0 0 0 1.6 2 force
execute if score @s stellarity.misc matches 41..60 run particle enchant ~ ~1.2 ~ 0 0 0 1.7 3 force
execute if score @s stellarity.misc matches 61..80 run particle enchant ~ ~1.2 ~ 0 0 0 1.8 4 force
execute if score @s stellarity.misc matches 81..100 run particle enchant ~ ~1.2 ~ 0 0 0 1.9 5 force
execute if score @s stellarity.misc matches 101..120 run particle enchant ~ ~1.2 ~ 0 0 0 2.0 6 force
execute if score @s stellarity.misc matches 121..140 run particle enchant ~ ~1.2 ~ 0 0 0 2.1 7 force
execute if score @s stellarity.misc matches 141..160 run particle enchant ~ ~1.2 ~ 0 0 0 2.2 8 force
execute if score @s stellarity.misc matches 161..180 run particle enchant ~ ~1.2 ~ 0 0 0 2.3 9 force

execute if score @s stellarity.misc matches ..20 run particle portal ~ ~1.2 ~ 0 0 0 1.5 1 force
execute if score @s stellarity.misc matches 21..40 run particle portal ~ ~1.2 ~ 0 0 0 1.6 1 force
execute if score @s stellarity.misc matches 41..60 run particle portal ~ ~1.2 ~ 0 0 0 1.7 2 force
execute if score @s stellarity.misc matches 61..80 run particle portal ~ ~1.2 ~ 0 0 0 1.8 2 force
execute if score @s stellarity.misc matches 81..100 run particle portal ~ ~1.2 ~ 0 0 0 1.9 3 force
execute if score @s stellarity.misc matches 101..120 run particle portal ~ ~1.2 ~ 0 0 0 2.0 3 force
execute if score @s stellarity.misc matches 121..140 run particle portal ~ ~1.2 ~ 0 0 0 2.1 4 force
execute if score @s stellarity.misc matches 141..160 run particle portal ~ ~1.2 ~ 0 0 0 2.2 4 force
execute if score @s stellarity.misc matches 161..180 run particle portal ~ ~1.2 ~ 0 0 0 2.3 5 force

# Sounds
execute if score @s stellarity.misc matches 1 run playsound minecraft:entity.illusioner.prepare_mirror player @a[distance=0..] ~ ~ ~ 1 0.8

execute if score @s stellarity.misc matches 20 run playsound minecraft:item.book.page_turn player @a[distance=0..] ~ ~ ~ 1 0.9
execute if score @s stellarity.misc matches 50 run playsound minecraft:item.book.page_turn player @a[distance=0..] ~ ~ ~ 1 0.9
execute if score @s stellarity.misc matches 70 run playsound minecraft:item.book.page_turn player @a[distance=0..] ~ ~ ~ 1 0.9
execute if score @s stellarity.misc matches 90 run playsound minecraft:item.book.page_turn player @a[distance=0..] ~ ~ ~ 1 0.9
execute if score @s stellarity.misc matches 110 run playsound minecraft:item.book.page_turn player @a[distance=0..] ~ ~ ~ 1 0.9
execute if score @s stellarity.misc matches 130 run playsound minecraft:item.book.page_turn player @a[distance=0..] ~ ~ ~ 1 0.9
execute if score @s stellarity.misc matches 145 run playsound minecraft:item.book.page_turn player @a[distance=0..] ~ ~ ~ 1 0.9
execute if score @s stellarity.misc matches 160 run playsound minecraft:item.book.page_turn player @a[distance=0..] ~ ~ ~ 1 0.9
execute if score @s stellarity.misc matches 175 run playsound minecraft:item.book.page_turn player @a[distance=0..] ~ ~ ~ 1 0.9
execute if score @s stellarity.misc matches 180 run playsound minecraft:item.book.page_turn player @a[distance=0..] ~ ~ ~ 1 0.9
execute if score @s stellarity.misc matches 185 run playsound minecraft:item.book.page_turn player @a[distance=0..] ~ ~ ~ 1 0.9
execute if score @s stellarity.misc matches 190 run playsound minecraft:item.book.page_turn player @a[distance=0..] ~ ~ ~ 1 0.9
execute if score @s stellarity.misc matches 195 run playsound minecraft:item.book.page_turn player @a[distance=0..] ~ ~ ~ 1 0.9

execute if score @s stellarity.misc matches 200 run function stellarity:items/spellbooks/return/teleport/start
