execute if entity @s[predicate=stellarity:items/holding/tamaris] as @e[type=!#kohara:invalid_targets,distance=0.1..20] run function stellarity:items/tamaris/execute/calculate_percentage

#execute if entity @s[predicate=stellarity:items/holding/cursed_tome/any] run function stellarity:items/cursed_tome/loop

# Cleansing Potato
effect clear @s[tag=stellarity.perm_buffs.cleansing_potato] poison

# Crest of The End
execute if entity @s[scores={stellarity.items.crest.time=1..}] run function stellarity:items/crest_of_the_end/countdown

# Dragon's Eye
execute if entity @s[predicate=stellarity:items/holding/trinkets/dragons_eye] run function stellarity:items/dragons_eye/main
execute if entity @s[tag=stellarity.items.dragons_eye.holding,predicate=!stellarity:items/holding/trinkets/dragons_eye] run function stellarity:items/dragons_eye/remove_from_team

# Cooldowns
execute if entity @s[scores={stellarity.items.spirit_dagger.effects_duration=1..}] run function stellarity:items/spirit_dagger/effects/reset/tick
execute if entity @s[scores={stellarity.items.tamaris.execute_cooldown=1..}] run function stellarity:items/tamaris/execute/cooldown_countdown
execute if entity @s[scores={stellarity.items.chorus_dagger.cooldown=1..}] run function stellarity:items/chorus_dagger/cooldown_countdown

scoreboard players reset @s stellarity.misc.loop.5t
