scoreboard players set @s stellarity.items.spirit_dagger.attract_cooldown 380

summon minecraft:area_effect_cloud ~ ~ ~ {Age:0,Duration:1,Tags:["stellarity.spirit_dagger.aec"]}
execute as @e[type=area_effect_cloud,limit=1,sort=nearest,tag=stellarity.spirit_dagger.aec] at @s run function stellarity:items/spirit_dagger/spirit/as_aec

execute as @p[predicate=stellarity:items/spirit_dagger/holding_any,distance=16..] at @s run playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 10 0
