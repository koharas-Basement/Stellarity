advancement revoke @s only stellarity:events/items/spellbooks/use_natures_wrath
recipe take @s stellarity:events/spellbooks/use_natures_wrath

scoreboard players set #mainhand stellarity.misc 0
execute unless data entity @s[gamemode=!creative,gamemode=!spectator] SelectedItem run \
	scoreboard players set #mainhand stellarity.misc 1
execute if score #mainhand stellarity.misc matches 0 run \
	loot replace entity @s[gamemode=!creative,gamemode=!spectator] weapon.offhand loot stellarity:items/spellbooks/natures_wrath
execute if score #mainhand stellarity.misc matches 0 run \
	item modify entity @s[gamemode=!creative,gamemode=!spectator] weapon.offhand stellarity:natures_wrath_update_biomes
execute if score #mainhand stellarity.misc matches 1 run \
	loot replace entity @s[gamemode=!creative,gamemode=!spectator] weapon.mainhand loot stellarity:items/spellbooks/natures_wrath
execute if score #mainhand stellarity.misc matches 1 run \
	item modify entity @s[gamemode=!creative,gamemode=!spectator] weapon.mainhand stellarity:natures_wrath_update_biomes

execute unless score @s stellarity.items.spellbook.natures_wrath.cooldown.shoot matches 1.. unless predicate kohara:player/is_sneaking at @s run function stellarity:items/spellbooks/natures_wrath/shoot_spirit
execute unless score @s stellarity.items.spellbook.natures_wrath.cooldown.wolves matches 1.. if predicate kohara:player/is_sneaking at @s run function stellarity:items/spellbooks/natures_wrath/summon_wolves
