advancement revoke @s only stellarity:events/items/spellbooks/use_return
recipe take @s stellarity:events/spellbooks/use_return

scoreboard players set #mainhand stellarity.misc 0
execute unless data entity @s[gamemode=!creative,gamemode=!spectator] SelectedItem run \
	scoreboard players set #mainhand stellarity.misc 1
execute if score #mainhand stellarity.misc matches 0 run \
	loot replace entity @s[gamemode=!creative,gamemode=!spectator] weapon.offhand loot stellarity:items/spellbooks/return
execute if score #mainhand stellarity.misc matches 0 run \
	item modify entity @s[gamemode=!creative,gamemode=!spectator] weapon.offhand stellarity:fix_spellbooks
execute if score #mainhand stellarity.misc matches 1 run \
	loot replace entity @s[gamemode=!creative,gamemode=!spectator] weapon.mainhand loot stellarity:items/spellbooks/return
execute if score #mainhand stellarity.misc matches 1 run \
	item modify entity @s[gamemode=!creative,gamemode=!spectator] weapon.mainhand stellarity:fix_spellbooks

execute unless score @s[tag=!stellarity.book_of_return.in_animation] stellarity.items.spellbook.return.cooldown matches 1.. at @s run function stellarity:items/spellbooks/return/start_return
