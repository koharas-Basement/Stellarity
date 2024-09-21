execute facing entity @p[predicate=stellarity:items/holding/tamaris,predicate=kohara:player/is_sneaking] eyes rotated ~ 0 run function stellarity:items/tamaris/execute/animation/as_entity/facing_player

playsound stellarity:item.tamaris.execute_bg player @a[distance=0..] ~ ~1.05 ~ 1 1

playsound minecraft:entity.player.attack.sweep player @a[distance=0..] ~ ~1.05 ~ 1 0.6
playsound minecraft:entity.player.attack.crit player @a[distance=0..] ~ ~1.05 ~ 1 0.8
playsound minecraft:entity.stray.death player @a[distance=0..] ~ ~1.05 ~ 1 0.8
playsound minecraft:entity.wither_skeleton.death player @a[distance=0..] ~ ~1.05 ~ 1 1
