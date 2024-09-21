advancement revoke @s only stellarity:events/items/shoot_clockwork_crossbow

#tellraw @a {"score":{"name": "@s","objective": "stellarity.items.clockwork_crossbow.should_save"},"color":"green"}

## Unconserved arrow (non-critical)
# Side Multishot arrows
execute if score @s stellarity.items.clockwork_crossbow.should_save matches 0 \
	anchored eyes positioned ^ ^ ^ \
	as @e[type=arrow,limit=3,sort=nearest,distance=..1,tag=!stellarity.aware,nbt={pickup:2b}] run \
	data merge entity @s {damage:1d,pickup:2b,crit:0b,life:600}

# Regular arrow
execute if score @s stellarity.items.clockwork_crossbow.should_save matches 0 \
	anchored eyes positioned ^ ^ ^ \
	as @e[type=arrow,limit=1,sort=nearest,distance=..1,tag=!stellarity.aware,nbt={pickup:1b}] run \
	data merge entity @s {damage:1d,pickup:1b,crit:0b,life:600}

## Conserved arrow (critical)
# Side Multishot arrows
execute if score @s stellarity.items.clockwork_crossbow.should_save matches 1 \
	anchored eyes positioned ^ ^ ^ \
	as @e[type=arrow,limit=3,sort=nearest,distance=..1,tag=!stellarity.aware,nbt={pickup:2b}] run \
	data merge entity @s {damage:1d,pickup:2b,crit:1b,life:600}

# Regular arrow
execute if score @s stellarity.items.clockwork_crossbow.should_save matches 1 \
	anchored eyes positioned ^ ^ ^ \
	as @e[type=arrow,limit=1,sort=nearest,distance=..1,tag=!stellarity.aware,nbt={pickup:1b}] run \
	data merge entity @s {damage:1d,pickup:2b,crit:1b,life:600}

#tellraw @a {"score":{"name": "@s","objective": "stellarity.items.clockwork_crossbow.should_save"},"color":"red"}

playsound minecraft:block.anvil.place player @a[distance=0..] ~ ~1.1 ~ 0.25 1.08

stopsound @a[distance=0..16] player minecraft:item.crossbow.shoot
playsound minecraft:item.crossbow.shoot player @a[distance=0..] ~ ~1.1 ~ 1 0.8

execute anchored eyes positioned ^ ^-0.287 ^ run function stellarity:items/clockwork_crossbow/smoke

attribute @s generic.movement_speed modifier add 3104ca38-1839-4eba-9282-48738e7443ea "stellarity.clockwork_crossbow.slowdown" -0.3 multiply
scoreboard players set @s stellarity.items.clockwork_crossbow.slowdown_time 22
scoreboard players set @s stellarity.items.clockwork_crossbow.cooldown 7
#scoreboard players set @s stellarity.items.clockwork_crossbow.should_save 0
