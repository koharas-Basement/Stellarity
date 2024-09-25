# 10s loop timer is incremented from 'player_loop_1s'

execute if entity @s[tag=stellarity.perm_buffs.miracle_fruit] run function stellarity:items/food/perm_buffs/miracle_fruit/heal

scoreboard players reset @s stellarity.misc.loop.10s
