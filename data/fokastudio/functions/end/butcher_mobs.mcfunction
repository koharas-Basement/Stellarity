# Butcher protection for mobs in The Dragon's Den
execute as @e[type=#fokastudio:end/butcher_mobs,predicate=fokastudio:end/locations/in_dragons_den] run tag @s add foka.butcher_ignore

# Teleport them deeeeep into the void, which deletes them automatically 
# Makes these pests perish so hard that they get reduced to atoms >:D
execute if score foka.config foka.config.auto_butcher.silverfish matches 1 in minecraft:the_end as @e[type=silverfish,tag=!foka.butcher_ignore] at @s run tp @s ~ ~-1000 ~
execute if score foka.config foka.config.auto_butcher.phantoms matches 1 in minecraft:the_end as @e[type=phantom,tag=!foka.butcher_ignore] at @s run tp @s ~ ~-1000 ~
