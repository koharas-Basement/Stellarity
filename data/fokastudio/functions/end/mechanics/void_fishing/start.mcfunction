setblock ~ ~-1 ~ barrier

execute align xyz run function fokastudio:end/mechanics/void_fishing/biome_aec

tag @s add foka.checked_bobber

advancement grant @a[distance=20..23,limit=1,sort=nearest,x_rotation=0..90] only fokastudio:end/void_reels
