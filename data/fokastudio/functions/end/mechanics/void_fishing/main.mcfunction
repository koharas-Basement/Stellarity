execute as @e[type=fishing_bobber,predicate=fokastudio:end/locations/in_the_end,tag=!foka.checked_bobber] at @s if entity @a[distance=20..23,limit=1,sort=nearest,x_rotation=0..90] run function fokastudio:end/mechanics/void_fishing/start
execute as @e[type=area_effect_cloud,tag=foka.void_fishing_aec] at @s unless entity @e[type=fishing_bobber,tag=foka.checked_bobber,distance=..2,limit=1] run function fokastudio:end/mechanics/void_fishing/stop
execute as @e[type=area_effect_cloud,tag=foka.void_fishing_aec,nbt={Age:100}] at @s run function fokastudio:end/mechanics/void_fishing/fish
