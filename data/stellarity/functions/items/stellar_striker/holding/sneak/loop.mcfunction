execute if entity @s[tag=!stellarity.holding_stellar_striker.sneaking] run function stellarity:items/stellar_striker/holding/sneak/start

execute anchored eyes anchored eyes rotated ~ 0 run tp @e[type=interaction,limit=1,sort=nearest,tag=stellarity.stellar_striker] ^ ^-.35 ^
execute as @e[type=interaction,limit=1,sort=nearest,tag=stellarity.stellar_striker] if data entity @s attack run function stellarity:items/stellar_striker/star/launch
