data remove entity @s attack

execute unless score @p stellarity.items.stellar_striker.cooldown matches 1.. as @e[type=marker,limit=1,sort=nearest,tag=stellarity.stellar_striker,distance=..0.5,scores={stellarity.items.stellar_striker.stars.amount=1..}] run function stellarity:items/stellar_striker/star/projectile/spawn

