data remove storage stellarity:temp enchants

execute as @e[type=item,distance=..1.5,nbt={OnGround:1b}] run function stellarity:mechanics/altar_crafting/tags

execute as @e[type=armor_stand,tag=stellarity.aota.sword_holder,predicate=stellarity:utils/holding_nothing_both] run kill @s

execute if entity @e[type=item,distance=..1.5] run function stellarity:mechanics/altar_crafting/crafting_checks
