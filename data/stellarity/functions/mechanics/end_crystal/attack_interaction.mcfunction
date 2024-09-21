# Explode End Crystal if sneaking
execute if entity @p[predicate=kohara:player/is_sneaking] run \
	damage @e[type=end_crystal,distance=..0.01,limit=1,sort=nearest,tag=stellarity.end_crystal] 1 player_attack by @p[predicate=kohara:player/is_sneaking]

# Destroy and drop if not
execute unless entity @p[predicate=kohara:player/is_sneaking] if entity @e[type=end_crystal,distance=..0.01,limit=1,sort=nearest,tag=stellarity.end_crystal] run \
	function stellarity:mechanics/end_crystal/drop
