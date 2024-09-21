execute unless score @s stellarity.items.tamaris.execute_cooldown matches 1.. if predicate kohara:player/is_sneaking run function stellarity:items/tamaris/execute/animation/progress
execute if score @s stellarity.items.tamaris.animation.progress matches 1.. unless predicate kohara:player/is_sneaking run scoreboard players reset @s stellarity.items.tamaris.animation.progress

execute if score @s[tag=!stellarity.items.tamaris.no_warn] stellarity.items.tamaris.execute_cooldown matches 1.. run title @s actionbar {"translate":"stellarity.items.weapons.tamaris.disabled","fallback":"DISABLED","color":"red"}

execute as @e[type=!#kohara:invalid_targets,tag=stellarity.items.tamaris.executable,distance=0.01..20] at @s anchored eyes rotated ~ 0 run function stellarity:items/tamaris/execute/indicator
