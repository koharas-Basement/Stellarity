tag @e[tag=!smithed.entity,nbt={variant:"stellarity:end"},type=#stellarity:end_variant_animals] add stellarity.animal
tag @e[tag=!smithed.entity,nbt={variant:"stellarity:end"},type=#stellarity:end_variant_animals] add smithed.entity

execute as @e[type=sheep,tag=!stellarity.invalid_animal,tag=!smithed.entity] at @s run function stellarity:entity/animal/convert_sheep
