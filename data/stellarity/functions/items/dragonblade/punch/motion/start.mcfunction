# Set punch cooldown
# 8 seconds
scoreboard players set @s stellarity.items.dragonblade.cooldown 160
tag @s add stellarity.items.dragonblade.cooldown
tag @s add stellarity.cooldown_tickdown

# Reset stacks
function stellarity:items/dragonblade/reset_stacks

# Get punch direction and distance
execute store result score #enchant stellarity.misc run data get entity @p[predicate=stellarity:items/holding/dragonblade,predicate=kohara:player/is_sneaking] SelectedItem.tag.Enchantments.[{id:"minecraft:knockback"}].lvl 1

# Punch distance gets reduced by half of knockback resistance
scoreboard players set #2 stellarity.misc 2
execute store result score #knockback_res stellarity.misc run attribute @s generic.knockback_resistance get 100
scoreboard players operation #knockback_res stellarity.misc /= #2 stellarity.misc
# 10 units = 1 block of punch distance
# Base distance = 6.6 blocks
# +1.1 per every Knockback level
# No, this does not have a cap,
# same applies to damage
# Go ham with illegal enchantments lol
scoreboard players set #max_distance stellarity.misc 66
scoreboard players set #1.1 stellarity.misc 11
scoreboard players operation #extra stellarity.misc = #enchant stellarity.misc
scoreboard players operation #extra stellarity.misc *= #1.1 stellarity.misc
scoreboard players operation #max_distance stellarity.misc += #extra stellarity.misc
execute store result storage stellarity:temp dragonblade.knockback_res int 1 run scoreboard players get #knockback_res stellarity.misc
execute if score #knockback_res stellarity.misc matches 1.. run function stellarity:items/dragonblade/punch/motion/knockback_res with storage stellarity:temp dragonblade

scoreboard players set #hit stellarity.misc 0
scoreboard players set #distance stellarity.misc 0
scoreboard players set #particles stellarity.misc 0

execute facing entity @p[predicate=stellarity:items/holding/dragonblade,predicate=kohara:player/is_sneaking] eyes rotated ~180 0 anchored feet positioned ^ ^.5 ^ run function stellarity:items/dragonblade/punch/motion/raycast

# Cool little visuals
execute as @p[predicate=stellarity:items/holding/dragonblade,predicate=kohara:player/is_sneaking] at @s rotated as @s rotated ~ 0 positioned ^ ^1.2 ^1 run function stellarity:items/dragonblade/punch/special_fx/particle_aec_spawn
