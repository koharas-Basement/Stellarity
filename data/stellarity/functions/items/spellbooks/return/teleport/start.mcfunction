data remove storage stellarity:temp book_of_return

data modify storage stellarity:temp book_of_return.player_data set from entity @p[predicate=stellarity:items/holding/spellbooks/return]
data modify storage stellarity:temp book_of_return.x set from storage stellarity:temp book_of_return.player_data.SpawnX
data modify storage stellarity:temp book_of_return.y set from storage stellarity:temp book_of_return.player_data.SpawnY
data modify storage stellarity:temp book_of_return.z set from storage stellarity:temp book_of_return.player_data.SpawnZ
data modify storage stellarity:temp book_of_return.dimension set from storage stellarity:temp book_of_return.player_data.SpawnDimension
data remove storage stellarity:temp book_of_return.player_data

tag @p[predicate=stellarity:items/holding/spellbooks/return] add stellarity.book_of_return.teleport

execute if data storage stellarity:temp book_of_return.dimension run function stellarity:items/spellbooks/return/teleport/summon_marker with storage stellarity:temp book_of_return
execute unless data storage stellarity:temp book_of_return.dimension run schedule function stellarity:items/spellbooks/return/teleport/locate_world_spawn 1t append

particle flash ~ ~1.2 ~ 0 0 0 0 1 force @a[distance=..48]

kill @s
