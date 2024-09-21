# Spin animation
# Handled in 'items/marker_loop'
summon marker ~ ~ ~ {Tags:["stellarity.marker","stellarity.prismember"]}
execute rotated as @s as @e[type=marker,limit=1,sort=nearest,tag=stellarity.prismember] run tp @s ~ ~ ~ ~ 0

# Apply cooldown
scoreboard players set @s stellarity.items.prismember.cooldown 18

# Spin damage
function stellarity:items/prismember/spin/get_damage
execute as @e[type=!#kohara:invalid_targets,distance=0.001..3.5] at @s run function stellarity:items/prismember/spin/damage

function stellarity:items/prismember/charge/reset_charge
scoreboard players reset @s stellarity.items.prismember.until_charge_reset
