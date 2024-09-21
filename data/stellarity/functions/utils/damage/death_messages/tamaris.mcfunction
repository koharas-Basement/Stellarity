execute store result score #msg kohara.misc run random value 1..3

#> EASTER EGG????
execute at @s if entity @a[sort=nearest,limit=1,distance=0.1..,name="kohara_"] run function stellarity:items/tamaris/execute/animation/rave

# And actual death message lol
execute if score #msg kohara.misc matches 1 run tellraw @a {"translate":"stellarity.death_messages.tamaris_execute.1","fallback":"%1$s was publicly executed by %2$s","with":[{"selector":"@s"},{"selector":"@p[predicate=stellarity:items/holding/tamaris]"}]}

execute if score #msg kohara.misc matches 2 run tellraw @a {"translate":"stellarity.death_messages.tamaris_execute.2","fallback":"%1$s was forced to see what 999 damage is like by %2$s","with":[{"selector":"@s"},{"selector":"@p[predicate=stellarity:items/holding/tamaris]"}]}

execute if score #msg kohara.misc matches 3 run tellraw @a {"translate":"stellarity.death_messages.tamaris_execute.3","fallback":"%1$s had their remaning health taken away by %2$s","with":[{"selector":"@s"},{"selector":"@p[predicate=stellarity:items/holding/tamaris]"}]}
