execute store result score #pixie_count stellarity.misc if entity @e[type=vex,tag=stellarity.pixie]
execute store result score #allay_count stellarity.misc if entity @e[type=allay,tag=stellarity.allay.natural_hallow_spawn]

execute unless score #pixie_count stellarity.misc matches 30.. run function stellarity:mobs/pixie/spawn
execute unless score #allay_count stellarity.misc matches 5.. if predicate kohara:chance/5percent run function stellarity:mobs/pixie/allay

# Prevent death animation from playing
tp @s ~ -1000 ~
