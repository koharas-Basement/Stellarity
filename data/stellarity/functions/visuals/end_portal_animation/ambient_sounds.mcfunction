# This happens every 5 seconds btw

#playsound block.beacon.ambient block @a ~ ~ ~ .4 0
execute if predicate stellarity:utils/chance/15percent run playsound minecraft:entity.ender_dragon.growl block @a ~ ~ ~ 0.01 1
execute if predicate stellarity:utils/chance/40percent run playsound block.respawn_anchor.ambient block @a ~ ~ ~ 0.4 0

scoreboard players reset @s stellarity.misc
