execute if entity @s[tag=!stellarity.holding_stellar_striker] run function stellarity:items/stellar_striker/holding/start

execute if entity @s[predicate=kohara:player/is_sneaking] run function stellarity:items/stellar_striker/holding/sneak/loop
execute if entity @s[tag=stellarity.holding_stellar_striker.sneaking,predicate=!kohara:player/is_sneaking] run function stellarity:items/stellar_striker/holding/sneak/stop

scoreboard players remove @s[scores={stellarity.items.stellar_striker.cooldown=1..}] stellarity.items.stellar_striker.cooldown 1
