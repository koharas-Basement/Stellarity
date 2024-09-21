scoreboard players add @s stellarity.items.dragonblade.punch_progress 1
scoreboard players set @s stellarity.items.dragonblade.until_punch_reset 2

execute if score @s stellarity.items.dragonblade.punch_progress matches 1 run function stellarity:items/dragonblade/punch/special_fx/start
execute if score @s stellarity.items.dragonblade.punch_progress matches 9 run function stellarity:items/dragonblade/punch/motion/start
