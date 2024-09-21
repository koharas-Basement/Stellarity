# This advancement triggers every second btw
advancement revoke @s only stellarity:events/items/charge_sabrewing

# Add charge
# 1 per tick
execute unless score @s stellarity.items.sabrewing.charge matches 126.. run scoreboard players add @s stellarity.items.sabrewing.charge 1
# Reset charge if hurt
execute if data entity @s {HurtTime:10s} run function stellarity:items/sabrewing/hit

# Reduce movement speed
# Depends on charge
execute if score @s stellarity.items.sabrewing.charge matches 45 run \
	attribute @s minecraft:generic.movement_speed modifier add c668131f-5a90-4dd0-8071-fbd28bd61b6a "stellarity.sabrewing.slowness" -0.15 multiply

execute if score @s stellarity.items.sabrewing.charge matches 85 run \
	attribute @s minecraft:generic.movement_speed modifier remove c668131f-5a90-4dd0-8071-fbd28bd61b6a
execute if score @s stellarity.items.sabrewing.charge matches 85 run \
	attribute @s minecraft:generic.movement_speed modifier add c668131f-5a90-4dd0-8071-fbd28bd61b6a "stellarity.sabrewing.slowness" -0.3 multiply

execute if score @s stellarity.items.sabrewing.charge matches 125 run \
	attribute @s minecraft:generic.movement_speed modifier remove c668131f-5a90-4dd0-8071-fbd28bd61b6a
execute if score @s stellarity.items.sabrewing.charge matches 125 run \
	attribute @s minecraft:generic.movement_speed modifier add c668131f-5a90-4dd0-8071-fbd28bd61b6a "stellarity.sabrewing.slowness" -0.45 multiply

# Charge sounds
# Pings on 1 second interval
execute if score @s stellarity.items.sabrewing.charge matches 25 run \
	playsound block.note_block.bass player @s ~ ~ ~ 1 0
execute if score @s stellarity.items.sabrewing.charge matches 45 run \
	playsound block.note_block.bass player @s ~ ~ ~ 1 0
execute if score @s stellarity.items.sabrewing.charge matches 65 run \
	playsound block.note_block.bass player @s ~ ~ ~ 1 0
execute if score @s stellarity.items.sabrewing.charge matches 85 run \
	playsound block.note_block.bass player @s ~ ~ ~ 1 0
execute if score @s stellarity.items.sabrewing.charge matches 105 run \
	playsound block.note_block.bass player @s ~ ~ ~ 1 0
execute if score @s stellarity.items.sabrewing.charge matches 125 run \
	playsound block.note_block.bass player @s ~ ~ ~ 1 0
execute if score @s stellarity.items.sabrewing.charge matches 145 run \
	playsound block.note_block.bass player @s ~ ~ ~ 1 0

# Charge indicators
execute if score @s stellarity.items.sabrewing.charge matches 45 run function stellarity:items/sabrewing/charge_sfx/1
execute if score @s stellarity.items.sabrewing.charge matches 85 run function stellarity:items/sabrewing/charge_sfx/2
execute if score @s stellarity.items.sabrewing.charge matches 125 run function stellarity:items/sabrewing/charge_sfx/3

scoreboard players set @s stellarity.items.sabrewing.until_charge_reset 2
