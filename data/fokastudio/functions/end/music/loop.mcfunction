execute unless score foka.config foka.config.custom_music matches 1 as @a[predicate=fokastudio:end/locations/in_the_end,predicate=!fokastudio:end/music/in_end_music_biomes] run stopsound @s music music.end
execute if score foka.config foka.config.custom_music matches 1 as @a[predicate=fokastudio:end/locations/in_the_end] run stopsound @s music music.end
execute as @a[predicate=fokastudio:end/locations/in_the_end] run scoreboard players add @s foka.end_music 1

# By default plays every 20 * 30 seconds (600s = 10 minutes)
# Enough for all tracks to finish before playing again, as the longest End track is ~7 minutes or so
# Will make it configurable at some point in time
execute as @a[predicate=fokastudio:end/locations/in_the_end] if score @s foka.end_music matches 30.. unless score foka.config foka.config.custom_music matches 1 run function fokastudio:end/music/play
execute as @a[predicate=fokastudio:end/locations/in_the_end] if score @s foka.end_music matches 30.. if score foka.config foka.config.custom_music matches 1 run function fokastudio:end/music/play_custom

schedule function fokastudio:end/music/loop 20s
