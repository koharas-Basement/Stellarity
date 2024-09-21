execute if entity @s[predicate=stellarity:items/holding_tamaris] as @e[type=!#kohara:invalid_targets,distance=0.1..20] run function stellarity:items/tamaris/execute/calculate_percentage

execute if entity @s[predicate=stellarity:items/cursed_tome/holding_any] run function stellarity:items/cursed_tome/loop

# Cooldowns
execute if entity @s[scores={stellarity.items.spirit_dagger.effects_duration=1..}] run function stellarity:items/spirit_dagger/effects/reset/tick
execute if entity @s[scores={stellarity.items.tamaris.execute_cooldown=1..}] run function stellarity:items/tamaris/execute/cooldown_countdown

scoreboard players reset @s stellarity.misc.loop.5t
