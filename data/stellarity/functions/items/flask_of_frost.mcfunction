advancement revoke @s only stellarity:events/items/potions/use_flask_of_frost

# This is ticked down every SECOND, not every TICK
scoreboard players set @s stellarity.items.flask_of_frost.duration 480

playsound minecraft:entity.zombie_villager.cure player @s ~ ~ ~ 0.5 0.7
