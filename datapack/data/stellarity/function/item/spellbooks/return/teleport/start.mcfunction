scoreboard players set @s stellarity.item.spellbook.return.cooldown 60

data remove storage stellarity:temp book_of_return

data modify storage stellarity:temp book_of_return.player_data set from entity @p
execute unless data storage stellarity:temp book_of_return.player_data.respawn run schedule function stellarity:item/spellbooks/return/teleport/locate_world_spawn 1t append

tag @p add stellarity.book_of_return.teleport

execute if data storage stellarity:temp book_of_return.player_data.respawn run function stellarity:item/spellbooks/return/teleport/locate_respawn

data remove storage stellarity:temp book_of_return.player_data


particle flash{color:-1} ~ ~1.2 ~ 0 0 0 0 1 force @a[distance=..48]

kill @s
