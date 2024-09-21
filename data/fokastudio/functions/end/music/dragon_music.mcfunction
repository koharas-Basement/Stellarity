execute in minecraft:the_end as @a[tag=foka.dragon_music,tag=!foka.dragon_music.is_playing] at @s run playsound music.dragon music @s
execute in minecraft:the_end as @a[tag=foka.dragon_music] run function fokastudio:end/music/dragon_music_loop
execute in minecraft:the_end as @a[tag=foka.dragon_music,tag=!foka.dragon_music.is_playing] run tag @s add foka.dragon_music.is_playing

execute in minecraft:the_end as @a[tag=foka.dragon_music.removal_schedule] run function fokastudio:end/music/dragon_music_stop
execute in minecraft:the_end as @a[tag=foka.dragon_music] unless entity @e[type=ender_dragon] run function fokastudio:end/music/dragon_music_stop
