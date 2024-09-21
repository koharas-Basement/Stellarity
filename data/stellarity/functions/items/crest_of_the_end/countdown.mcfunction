# Ticked every 5 ticks
scoreboard players remove @s stellarity.items.crest.time 5
execute if score @s stellarity.items.crest.time matches ..0 run function stellarity:items/crest_of_the_end/time_out
