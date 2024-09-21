fill ~-1 ~ ~-1 ~1 ~ ~1 air replace barrier
kill @e[type=fishing_bobber,limit=1,sort=nearest]
particle poof ~ ~ ~ 0 0 0 0.11 30 force

execute as @p[predicate=stellarity:void_fishing/holding_fishing_rod/any] run function stellarity:mechanics/void_fishing/as_player

execute positioned ~ ~.5 ~ run function stellarity:mechanics/void_fishing/decide_drop

execute as @e[type=item,limit=1,sort=nearest] run function stellarity:mechanics/void_fishing/as_item

playsound minecraft:entity.enderman.ambient neutral @a ~ ~ ~ 1.5 0.7
playsound minecraft:entity.fishing_bobber.splash neutral @a ~ ~ ~ 1.5 0.88
