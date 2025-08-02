execute unless entity @s[tag=stellarity.items.dragonblade.punch_ready] anchored eyes rotated ~ 0 run particle firework ^ ^1.5 ^ 0 0 0 0.08 18 force @a[predicate=stellarity:item/holding/dragonblade]
execute unless entity @s[tag=stellarity.items.dragonblade.punch_ready] run playsound minecraft:block.note_block.chime player @a[predicate=stellarity:item/holding/dragonblade,distance=0..] ~ ~ ~ 1 1.7

playsound minecraft:entity.ender_dragon.ambient player @a[predicate=stellarity:item/holding/dragonblade,distance=0..] ~ ~ ~ 0.4 1

tag @s add stellarity.items.dragonblade.punch_ready
scoreboard players add @s stellarity.items.dragonblade.stacks 1
