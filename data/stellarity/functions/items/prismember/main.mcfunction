execute if entity @s[predicate=kohara:player/is_sneaking] \
	unless score @s stellarity.items.prismember.cooldown matches 1.. run \
	function stellarity:items/prismember/charge/main

execute if entity @s[tag=stellarity.items.prismember.ready] \
	if data entity @e[type=interaction,limit=1,sort=nearest,tag=stellarity.prismember] attack \
	run \
	function stellarity:items/prismember/spin/start

scoreboard players remove @s[scores={stellarity.items.prismember.cooldown=1..}] stellarity.items.prismember.cooldown 1
