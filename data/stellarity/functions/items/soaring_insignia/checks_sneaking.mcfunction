execute if entity @s[x_rotation=-90..-15] run function stellarity:items/soaring_insignia/ascend
execute if entity @s[x_rotation=15..90,tag=stellarity.insignia.flying] run function stellarity:items/soaring_insignia/descend

execute if entity @s[x_rotation=-14..14,tag=stellarity.insignia.flying] run effect give @s levitation infinite 255 true
