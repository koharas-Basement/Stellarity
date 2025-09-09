tag @e[type=#stellarity:end_variant_animals,tag=!smithed.entity,nbt={variant:"stellarity:end"}] add stellarity.animal
tag @e[type=#stellarity:end_variant_animals,tag=!smithed.entity,nbt={variant:"stellarity:end"}] add smithed.entity

execute as @e[type=sheep,tag=!stellarity.invalid_animal,tag=!smithed.entity] at @s run function stellarity:entity/animal/convert_sheep
