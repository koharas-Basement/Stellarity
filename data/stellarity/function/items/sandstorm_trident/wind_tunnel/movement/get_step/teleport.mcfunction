execute as @e[type=area_effect_cloud,tag=stellarity.wind_tunnel,sort=nearest] \
	if score @s stellarity.items.sandstorm_trident.id = @n[type=block_display,tag=stellarity.sandstorm_trident] stellarity.items.sandstorm_trident.id \
	if score @s stellarity.items.sandstorm_trident.trail_pos = @n[type=block_display,tag=stellarity.sandstorm_trident] stellarity.misc3 \
	at @s \
	run tp @n[type=block_display,tag=stellarity.sandstorm_trident] ~ ~ ~

tag @s remove stellarity.scheduled_tp
