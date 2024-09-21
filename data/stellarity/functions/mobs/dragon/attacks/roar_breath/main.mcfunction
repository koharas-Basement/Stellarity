execute as @e[type=area_effect_cloud,distance=..24,tag=!stellarity.dragon_breath,nbt={Particle:"minecraft:dragon_breath"}] \
	at @s run \
	function stellarity:mobs/dragon/attacks/roar_breath/edit_cloud
