## Hallow Mobs
# Pixies
execute as @e[type=vex,predicate=stellarity:locations/biomes/in_the_hallow,tag=!stellarity.pixie,tag=!stellarity.aware] at @s run function stellarity:mobs/pixie/check
# Slay Queen ✨✨✨✨✨
# (Empress of Light)
execute as @e[type=vindicator,tag=stellarity.eol] at @s run function stellarity:mobs/eol/main

# Dragon stuff
execute as @e[type=ender_dragon,tag=fe.boss] at @s run function stellarity:mobs/dragon/main

# Gloop Froggo protection
execute as @e[type=slime,tag=stellarity.gloop] at @s if entity @e[type=frog,distance=..8] run effect give @s resistance 1 5 true
