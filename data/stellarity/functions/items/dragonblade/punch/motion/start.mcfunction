# Set punch cooldown
# 9.5 seconds
scoreboard players set @s stellarity.items.dragonblade.cooldown 160

# Reset stacks
function stellarity:items/dragonblade/reset_stacks

# Get punch direction and distance
execute store result score #enchant stellarity.misc run data get entity @p[predicate=stellarity:items/holding_dragonblade,predicate=stellarity:utils/player/is_sneaking] SelectedItem.tag.Enchantments.[{id:"minecraft:knockback"}].lvl 1

# 10 units = 1 block of punch distance
# Base distance = 6.6 blocks
# +1.1 per every Knockback level
# No, this does not have a cap,
# same applies to damage :D
# Go ham with enchants through NBT >:D
scoreboard players set #max_distance stellarity.misc 66
scoreboard players set #1.1 stellarity.misc 11
scoreboard players operation #extra stellarity.misc = #enchant stellarity.misc
scoreboard players operation #extra stellarity.misc *= #1.1 stellarity.misc
scoreboard players operation #max_distance stellarity.misc += #extra stellarity.misc

scoreboard players set #hit stellarity.misc 0
scoreboard players set #distance stellarity.misc 0

execute facing entity @p[predicate=stellarity:items/holding_dragonblade,predicate=stellarity:utils/player/is_sneaking] eyes rotated ~180 0 anchored feet positioned ^ ^.5 ^ run function stellarity:items/dragonblade/punch/motion/raycast

# Cool little visuals
execute at @p[predicate=stellarity:items/holding_dragonblade,predicate=stellarity:utils/player/is_sneaking] facing entity @s eyes rotated ~ 0 positioned ^ ^1.05 ^1 run function stellarity:items/dragonblade/punch/special_fx/particle_aec_spawn
