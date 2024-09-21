# Contants
scoreboard players set #2 stellarity.misc 2
scoreboard players set #100 stellarity.misc 100

# Scaling
scoreboard players operation #temp3 stellarity.misc = #damage kohara.misc
scoreboard players operation #temp3 stellarity.misc /= #100 stellarity.misc
scoreboard players operation #temp3 stellarity.misc /= #2 stellarity.misc
scoreboard players operation #damage_extra stellarity.misc /= #temp3 stellarity.misc

# Extra strong scaling
# The last one at 17 extra damage is effectively a stop to gaining damage
execute if score #damage kohara.misc matches 1300.. run \
	scoreboard players operation #damage_extra stellarity.misc /= #2 stellarity.misc
execute if score #damage kohara.misc matches 1500.. run \
	scoreboard players operation #damage_extra stellarity.misc /= #2 stellarity.misc
execute if score #damage kohara.misc matches 1700.. run \
	scoreboard players operation #damage_extra stellarity.misc /= #3 stellarity.misc

execute unless score #damage_extra stellarity.misc matches 0..1 run function stellarity:items/frigid_harvester/continue
