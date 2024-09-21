advancement revoke @s only stellarity:events/items/spellbooks/use_natures_wrath
recipe take @s stellarity:events/spellbooks/use_natures_wrath

execute unless score @s stellarity.items.spellbook.natures_wrath.cooldown.shoot matches 1.. unless predicate stellarity:utils/player/is_sneaking at @s run function stellarity:items/spellbooks/natures_wrath/shoot_spirit
execute unless score @s stellarity.items.spellbook.natures_wrath.cooldown.wolves matches 1.. if predicate stellarity:utils/player/is_sneaking at @s run function stellarity:items/spellbooks/natures_wrath/summon_wolves

tag @s[gamemode=!creative,gamemode=!spectator] add stellarity.give_back.spellbooks.natures_wrath
schedule function stellarity:items/spellbooks/natures_wrath/give_back/scheduled 2t append
