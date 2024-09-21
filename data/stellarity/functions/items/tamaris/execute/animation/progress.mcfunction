scoreboard players add @s stellarity.items.tamaris.animation.progress 1

execute if score @s stellarity.items.tamaris.animation.progress matches 1 run title @s actionbar " "

## DEBUG
# And fun tbh
#execute if score @s stellarity.items.tamaris.animation.progress matches 1 as @e[type=!#kohara:invalid_targets,distance=0.1..100,limit=1,sort=nearest,tag=stellarity.items.tamaris.executable] at @s run tp ~50 ~ ~

execute if score @s stellarity.items.tamaris.animation.progress matches 2 run function stellarity:items/tamaris/execute/animation/playsound

execute if score @s stellarity.items.tamaris.animation.progress matches 5 run function stellarity:items/tamaris/execute/animation/teleport_particles

execute if score @s stellarity.items.tamaris.animation.progress matches 5 run scoreboard players set @s stellarity.items.tamaris.execute_cooldown 10
execute if score @s stellarity.items.tamaris.animation.progress matches 5 run tag @s add stellarity.items.tamaris.no_warn
# Executing things as entity in question
execute if score @s stellarity.items.tamaris.animation.progress matches 5 as @e[type=!#kohara:invalid_targets,distance=0.1..100,limit=1,sort=nearest,tag=stellarity.items.tamaris.executable] run function stellarity:items/tamaris/execute/animation/as_entity/kill

execute if score @s stellarity.items.tamaris.animation.progress matches 5 run scoreboard players reset @s stellarity.items.tamaris.animation.progress
