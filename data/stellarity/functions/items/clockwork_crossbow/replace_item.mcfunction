scoreboard players set @s stellarity.items.clockwork_crossbow.should_save 0

execute if predicate stellarity:items/clockwork_crossbow/holding_unloaded_mainhand run \
	item modify entity @s weapon.mainhand stellarity:load_clockwork_crossbow
execute if predicate stellarity:items/clockwork_crossbow/holding_unloaded_offhand run \
	item modify entity @s weapon.offhand stellarity:load_clockwork_crossbow

# Ammo conservation
execute if predicate stellarity:items/clockwork_crossbow/quick_charge/0 \
	if predicate kohara:chance/25percent run \
	scoreboard players set @s stellarity.items.clockwork_crossbow.should_save 1
execute if predicate stellarity:items/clockwork_crossbow/quick_charge/1 \
	if predicate kohara:chance/31percent run \
	scoreboard players set @s stellarity.items.clockwork_crossbow.should_save 1
execute if predicate stellarity:items/clockwork_crossbow/quick_charge/2 \
	if predicate kohara:chance/37percent run \
	scoreboard players set @s stellarity.items.clockwork_crossbow.should_save 1
execute if predicate stellarity:items/clockwork_crossbow/quick_charge/3_and_more \
	if predicate kohara:chance/43percent run \
	scoreboard players set @s stellarity.items.clockwork_crossbow.should_save 1

execute if score @s stellarity.items.clockwork_crossbow.should_save matches 0 run \
	clear @s[gamemode=!creative,gamemode=!spectator] #minecraft:arrows 1

#tellraw @a {"score":{"name": "@s","objective": "stellarity.items.clockwork_crossbow.should_save"},"color":"aqua"}

execute at @s run function stellarity:items/clockwork_crossbow/sounds
