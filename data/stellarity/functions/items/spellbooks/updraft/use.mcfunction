advancement revoke @s only stellarity:events/items/spellbooks/use_updraft
recipe take @s stellarity:events/spellbooks/use_updraft

execute unless score @s stellarity.items.spellbook.updraft.cooldown matches 1.. at @s run function stellarity:items/spellbooks/updraft/boost

tag @s[gamemode=!creative,gamemode=!spectator] add stellarity.give_back.spellbooks.updraft
schedule function stellarity:items/spellbooks/updraft/give_back/scheduled 2t append
