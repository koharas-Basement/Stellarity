advancement revoke @s only stellarity:events/items/spellbooks/use_light
recipe take @s stellarity:events/spellbooks/use_light

execute unless score @s stellarity.items.spellbook.light.cooldown matches 1.. at @s run function stellarity:items/spellbooks/light/spawn_aura

tag @s[gamemode=!creative,gamemode=!spectator] add stellarity.give_back.spellbooks.light
schedule function stellarity:items/spellbooks/light/give_back/scheduled 2t append
