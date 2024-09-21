tag @s remove foka.holy_protection
scoreboard players set @s foka.items.armors.holy_protection_cooldown 240
effect clear @s resistance

function fokastudio:end/items/armors/hallowed_armor/summon_marker

advancement grant @s only fokastudio:end/cancel_damage_hallowed_armor

# I-frames of some sort
effect give @s resistance 3 100 true
effect give @s fire_resistance 3 100 true

effect give @s speed 3 1 true

# Cannot remove KR straight away due to my i-frames mechanic
# It is handled in loop.mcfunction
