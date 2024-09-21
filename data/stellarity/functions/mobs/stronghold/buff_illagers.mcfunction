tag @s add stellarity.stronghold.buffed

execute if entity @s[type=witch] run function stellarity:mobs/stronghold/buff/witch
execute if entity @s[type=evoker] run function stellarity:mobs/stronghold/buff/evoker
execute if entity @s[type=vindicator] run function stellarity:mobs/stronghold/buff/vindicator
execute if entity @s[type=pillager] run function stellarity:mobs/stronghold/buff/pillager
execute if entity @s[type=illusioner] run function stellarity:mobs/stronghold/buff/illusioner

# Fix unnatural spawn amounts of Illagers in Strongholds when paired with 'Better Village&Pillage' datapack
execute if entity @s[predicate=kohara:chance/66percent,tag=!bvp-spawn] run tag @s add bvp-spawn
