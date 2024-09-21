advancement revoke @s only stellarity:events/items/crest/block_axe

scoreboard players set @s stellarity.items.crest.bonus_dmg 3
attribute @s generic.attack_damage modifier add 09ba2f70-0cdf-4c47-b2c9-9ccf0ef901fb "stellarity.crest" 0.45 multiply_base
title @s actionbar [{"text":"• ","color":"#2A2A2A"},{"text":"🛡 ","color":"#731590"},{"text":"⬛⬛⬛","color":"#B921E7"},{"text":" 🛡","color":"#731590"},{"text":" •","color":"#2A2A2A"}]

particle explosion_emitter ~ ~1.1 ~ 0 0 0 1 1 force @a[distance=..32]
particle minecraft:dragon_breath ~ ~ ~ 1.75 1.75 1.75 0.04 120 normal
particle poof ~ ~ ~ 2.2 2.2 2.2 0 60 force

playsound minecraft:entity.generic.explode player @a

execute as @e[type=!#kohara:invalid_targets,distance=0.01..3.5] run function stellarity:items/crest_of_the_end/explosion
