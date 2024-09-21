# Spin animation
# Handled in 'items/marker_loop'
summon marker ~ ~ ~ {Tags:["stellarity.marker","stellarity.prismember"]}
execute rotated as @s as @e[type=marker,limit=1,sort=nearest,tag=stellarity.prismember] run tp @s ~ ~ ~ ~ 0

# Apply cooldown
scoreboard players set @s stellarity.items.prismember.cooldown 20


## Spin damage
# Get extra fire duration
execute store result score #enchant stellarity.misc run data get entity @s SelectedItem.tag.Enchantments.[{id:"minecraft:fire_aspect"}].lvl 20
# And damage!
execute as @e[type=!#kohara:invalid_targets,distance=0.001..4] at @s run function stellarity:items/prismember/spin/damage

function stellarity:items/prismember/charge/reset_charge
scoreboard players reset @s stellarity.items.prismember.until_charge_reset
