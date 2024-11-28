tag @n[type=trident] add stellarity.sandstorm_trident

data modify entity @n[type=trident] NoGravity set value 1b
# execute unless predicate kohara:player/is_sneaking run data modify entity @n[type=trident] NoGravity set value 1b

execute store result score @n[type=trident] stellarity.items.sandstorm_trident.id run random value -100000..100000

summon marker ^ ^ ^ {Tags:["stellarity.sandstorm_trident"]}
data modify entity @n[type=marker,tag=stellarity.sandstorm_trident] data.Motion set from entity @n[type=trident] Motion
# scoreboard players operation @n[type=marker,tag=stellarity.sandstorm_trident] stellarity.items.sandstorm_trident.id = @n[type=trident] stellarity.items.sandstorm_trident.id
