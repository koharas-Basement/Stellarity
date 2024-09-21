function stellarity:items/fish/main

# Dragonblade
execute as @e[type=!#kohara:invalid_targets,scores={stellarity.items.dragonblade.until_punch_reset=1..}] run function stellarity:items/dragonblade/punch/progress_reset_countdown
execute as @e[type=area_effect_cloud,tag=stellarity.items.dragonblade.smthgram_aec] at @s rotated as @s run function stellarity:items/dragonblade/punch/special_fx/smthgram

# Duskberry
execute as @e[type=area_effect_cloud,tag=stellarity.duskberry_cloud] at @s run function stellarity:items/duskberry/as_aec

# Prismatic Pearl
execute as @e[type=ender_pearl,tag=stellarity.prismatic_pearl] at @s run function stellarity:items/prismatic_pearl/trail

# Sharanga & Call of The Void
execute as @e[type=#minecraft:arrows,tag=stellarity.arrow] at @s run function stellarity:loops/projectile_loop

execute as @e[type=item,tag=stellarity.pandoras_barrel] at @s run function stellarity:items/pandoras_barrel/animation/item/trail
