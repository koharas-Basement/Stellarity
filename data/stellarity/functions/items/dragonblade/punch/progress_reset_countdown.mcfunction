scoreboard players remove @s stellarity.items.dragonblade.until_punch_reset 1
execute if score @s stellarity.items.dragonblade.until_punch_reset matches 0 run function stellarity:items/dragonblade/punch/progress_reset
