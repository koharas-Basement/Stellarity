function stellarity:items/fish/main

# Dragonblade
execute as @e[type=!#kohara:invalid_targets,scores={stellarity.items.dragonblade.until_punch_reset=1..}] run function stellarity:items/dragonblade/punch/progress_reset_countdown
execute as @e[type=area_effect_cloud,tag=stellarity.items.dragonblade.smthgram_aec] at @s rotated as @s run function stellarity:items/dragonblade/punch/special_fx/smthgram

# Sharanga
execute as @e[type=spectral_arrow,tag=stellarity.spectral_bolt] at @s run function stellarity:items/sharanga/arrow_loop

# Sabrewing
execute as @e[type=#arrows,tag=stellarity.items.sabrewing.arrow] at @s run function stellarity:items/sabrewing/charged_shots/loop

# Duskberry
execute as @e[type=area_effect_cloud,tag=stellarity.duskberry_cloud] at @s run function stellarity:items/duskberry/as_aec

# Prismatic Pearl
execute as @e[type=ender_pearl,tag=stellarity.prismatic_pearl] at @s run function stellarity:items/prismatic_pearl/trail

# Pandora's Barrel
execute as @e[type=armor_stand,tag=stellarity.pandoras_barrel.armor_stand] at @s positioned ~ ~1.7 ~ run function stellarity:items/pandoras_barrel/animation/progress
