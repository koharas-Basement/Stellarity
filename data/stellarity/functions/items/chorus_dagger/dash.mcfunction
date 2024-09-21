scoreboard players set @s stellarity.items.chorus_dagger.cooldown 160

function stellarity:items/chorus_dagger/damage/calculate

particle dust_color_transition 0.82 0.322 0.918 1 0.549 0.176 0.737 ~ ~1 ~ .3 .5 .3 0 40 force

# That's a one long command...
execute as @e[type=!#kohara:invalid_targets,limit=1,sort=nearest,distance=0.01..8] \
	at @s run \
	function stellarity:items/chorus_dagger/as_entity
