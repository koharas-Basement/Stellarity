scoreboard players set @s stellarity.items.dragonblade.misc_cooldown 1

execute unless score @s stellarity.items.dragonblade.stacks matches 3.. run scoreboard players add @s stellarity.items.dragonblade.stacks 1
scoreboard players set @s stellarity.items.dragonblade.until_stack_reset 320

playsound minecraft:entity.shulker.shoot player @a ~ ~ ~ 0.86 0.75
#playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 0.33 0.6
#playsound minecraft:entity.player.attack.crit player @a ~ ~ ~ 0.25 0.6

execute if score @s stellarity.items.dragonblade.stacks matches 3.. run function stellarity:items/dragonblade/punch_ready
