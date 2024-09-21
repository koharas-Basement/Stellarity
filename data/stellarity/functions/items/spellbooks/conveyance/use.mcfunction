advancement revoke @s only stellarity:events/items/spellbooks/use_conveyance
recipe take @s stellarity:events/spellbooks/use_conveyance

execute unless score @s stellarity.items.spellbook.conveyance.cooldown matches 1.. at @s run function stellarity:items/spellbooks/conveyance/shoot_bolt

tag @s[gamemode=!creative,gamemode=!spectator] add stellarity.give_back.spellbooks.conveyance
schedule function stellarity:items/spellbooks/conveyance/give_back/scheduled 2t append
