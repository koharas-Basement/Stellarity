scoreboard players remove @s stellarity.items.dragonblade.until_stack_reset 3

execute if score @s stellarity.items.dragonblade.until_stack_reset matches ..0 run function stellarity:items/dragonblade/reset_stacks

execute if score @s stellarity.items.dragonblade.stacks matches 1 run particle dust 0.176 0 0.294 1.5 ^ ^1.5 ^ 0.18 0.18 0.18 0 3 force @a[predicate=stellarity:items/holding_dragonblade]
execute if score @s stellarity.items.dragonblade.stacks matches 2 run particle dust 0.396 0 0.659 1.5 ^ ^1.5 ^ 0.18 0.18 0.18 0 3 force @a[predicate=stellarity:items/holding_dragonblade]
execute if score @s stellarity.items.dragonblade.stacks matches 3 run particle dust 0.6 0 1 1.5 ^ ^1.5 ^ 0.18 0.18 0.18 0 3 force @a[predicate=stellarity:items/holding_dragonblade]
