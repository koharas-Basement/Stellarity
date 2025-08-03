execute as @e[type=illusioner,tag=!smithed.entity,predicate=stellarity:location/in_the_end] at @s run function stellarity:entity/animal/end_spawn

tag @e[tag=!smithed.entity,nbt={variant:"stellarity:end"}] add stellarity.animal
tag @e[tag=!smithed.entity,nbt={variant:"stellarity:end"}] add smithed.entity

execute as @e[tag=stellarity.animal] at @s run function stellarity:entity/animal/effects/aura
