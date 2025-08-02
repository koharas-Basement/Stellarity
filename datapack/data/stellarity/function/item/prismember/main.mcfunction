execute if entity @s[predicate=kohara:player/is_sneaking] \
	unless score @s stellarity.items.prismember.cooldown matches 1.. run \
	function stellarity:item/prismember/charge/main

execute if entity @s[tag=stellarity.items.prismember.ready] \
	if data entity @n[type=interaction,tag=stellarity.prismember] attack \
	run \
	function stellarity:item/prismember/spin/start

scoreboard players remove @s[scores={stellarity.items.prismember.cooldown=1..}] stellarity.items.prismember.cooldown 1
