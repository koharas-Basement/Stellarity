execute if block ~ ~ ~ barrel run function stellarity:items/pandoras_barrel/hit_block
scoreboard players add #distance stellarity.items.pandoras_barrel.raycast 1
execute if score #hit stellarity.items.pandoras_barrel.raycast matches 0 if score #distance stellarity.items.pandoras_barrel.raycast matches ..560 positioned ^ ^ ^0.0125 run function stellarity:items/pandoras_barrel/ray
