scoreboard players remove @s stellarity.items.dragonblade.cooldown 3

execute if score @s stellarity.items.dragonblade.cooldown matches ..0 run tag @s remove stellarity.items.dragonblade.cooldown

execute anchored eyes rotated ~ 0 run particle smoke ^ ^1 ^ 0 0 0 .03 2 force @a[predicate=stellarity:items/holding_dragonblade]
