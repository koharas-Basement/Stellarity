scoreboard players add @s stellarity.items.tamaris.animation.progress 1

execute if score @s stellarity.items.tamaris.animation.progress matches 1 run title @s actionbar " "

# Resource pack only
execute if score @s stellarity.items.tamaris.animation.progress matches 2 run function stellarity:items/tamaris/execute/animation/playsound

execute if score @s stellarity.items.tamaris.animation.progress matches 5 run function stellarity:items/tamaris/execute/animation/teleport_particles/fx

# Executing things as entity in question
execute if score @s stellarity.items.tamaris.animation.progress matches 5 run scoreboard players set @s stellarity.items.tamaris.execute_cooldown 3
execute if score @s stellarity.items.tamaris.animation.progress matches 5 run tag @s add stellarity.items.tamaris.no_warn
execute if score @s stellarity.items.tamaris.animation.progress matches 5 as @e[type=!#stellarity:invalid_targets,distance=0.1..16,limit=1,sort=nearest,tag=stellarity.items.tamaris.executable] run function stellarity:items/tamaris/execute/animation/as_entity/2

# Remove player tag
execute if score @s stellarity.items.tamaris.animation.progress matches 5 run tag @s remove stellarity.items.tamaris.doing_execute
execute if score @s stellarity.items.tamaris.animation.progress matches 5 run scoreboard players reset @s stellarity.items.tamaris.animation.progress