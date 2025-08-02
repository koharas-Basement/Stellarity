execute if entity @s[predicate=stellarity:item/holding/tamaris] as @e[type=!#kohara:invalid_targets,distance=0.1..20] run function stellarity:item/tamaris/execute/calculate_percentage

# Crest of The End
execute if entity @s[scores={stellarity.items.crest.time=1..}] run function stellarity:item/crest_of_the_end/countdown

# Dragon's Eye
execute if entity @s[predicate=stellarity:item/holding/trinket/dragons_eye] run function stellarity:item/dragons_eye/main
execute if entity @s[tag=stellarity.items.dragons_eye.holding,predicate=!stellarity:item/holding/trinket/dragons_eye] run function stellarity:item/dragons_eye/remove_from_team

# Cooldowns
execute if entity @s[scores={stellarity.items.spirit_dagger.effects_duration=1..}] run function stellarity:item/spirit_dagger/effects/reset/tick
execute if entity @s[scores={stellarity.items.tamaris.execute_cooldown=1..}] run function stellarity:item/tamaris/execute/cooldown_countdown
execute if entity @s[scores={stellarity.items.chorus_dagger.cooldown=1..}] run function stellarity:item/chorus_dagger/cooldown_countdown

scoreboard players reset @s stellarity.misc.loop.5t
