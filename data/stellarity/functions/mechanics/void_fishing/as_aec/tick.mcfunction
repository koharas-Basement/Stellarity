## Lure is initialized directly in 'start.mcfunction'

# Adds 1 per tick to time
scoreboard players add @s stellarity.mechanics.void_fishing.length 1

# Roll fishing time
execute if score @s stellarity.mechanics.void_fishing.length matches 1 run \
	function stellarity:mechanics/void_fishing/as_aec/roll_time/roll

## It's fishing time!
execute if score @s[tag=!stellarity.can_fish_out] stellarity.mechanics.void_fishing.length = @s stellarity.mechanics.void_fishing.max_time run \
	function stellarity:mechanics/void_fishing/as_aec/fishing_opportunity

execute if score @s stellarity.mechanics.void_fishing.can_fish matches 1 run tag @s remove stellarity.can_fish_out
execute if score @s stellarity.mechanics.void_fishing.can_fish matches 1 run scoreboard players reset @s stellarity.mechanics.void_fishing.length
scoreboard players remove @s[scores={stellarity.mechanics.void_fishing.can_fish=1..}] stellarity.mechanics.void_fishing.can_fish 1

# Stop the process if Fishing Bobber is not present
# This also removes the Area Effect Cloud after fishing out an item
execute unless entity @s[tag=stellarity.can_fish_out] unless entity @e[type=fishing_bobber,tag=stellarity.checked_bobber,distance=..2,limit=1] run \
	function stellarity:mechanics/void_fishing/as_aec/stop
execute if entity @s[tag=stellarity.can_fish_out] unless entity @e[type=fishing_bobber,tag=stellarity.checked_bobber,distance=..2,limit=1] run \
	function stellarity:mechanics/void_fishing/as_aec/fish
