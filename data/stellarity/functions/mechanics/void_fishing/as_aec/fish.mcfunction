tag @s remove stellarity.can_fish_out
kill @s

fill ~-1 ~ ~-1 ~1 ~ ~1 air replace barrier

particle poof ~ ~ ~ 0 0 0 0.12 50 force

execute as @p[predicate=stellarity:void_fishing/holding_fishing_rod/any] run function stellarity:mechanics/void_fishing/as_player/as_self

execute positioned ~ ~.5 ~ run function stellarity:mechanics/void_fishing/as_aec/decide_drop

execute as @e[type=item,limit=1,sort=nearest] run function stellarity:mechanics/void_fishing/as_item/motion

function stellarity:mechanics/void_fishing/as_aec/wave
