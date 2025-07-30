scoreboard players remove @s[scores={stellarity.empress_of_light.attack_cooldown=1..}] stellarity.empress_of_light.attack_cooldown 1
execute if entity @s[tag=stellarity.empress_of_light.attack_ready] run function stellarity:entity/empress_of_light/attacks/decide/decide

execute if score @s stellarity.empress_of_light.attack_cooldown matches 0 run function stellarity:entity/empress_of_light/attacks/decide/is_phase_2_transition

execute if entity @s[tag=stellarity.empress_of_light.dash] run function stellarity:entity/empress_of_light/attacks/code/loops/dash
execute if entity @s[tag=stellarity.empress_of_light.prismatic_bolts] run function stellarity:entity/empress_of_light/attacks/code/loops/prismatic_bolts
execute if entity @s[tag=stellarity.empress_of_light.prismatic_bolts_2] run function stellarity:entity/empress_of_light/attacks/code/loops/prismatic_bolts_2
execute if entity @s[tag=stellarity.empress_of_light.ethereal_lance] run function stellarity:entity/empress_of_light/attacks/code/loops/ethereal_lance

execute as @e[type=marker,tag=stellarity.empress_of_light.prismatic_bolt] at @s anchored eyes run function stellarity:entity/empress_of_light/attacks/code/prismatic_bolts/loop
execute as @e[type=marker,tag=stellarity.empress_of_light.ethereal_lance] at @s anchored eyes run function stellarity:entity/empress_of_light/attacks/code/ethereal_lance/sword_loop
