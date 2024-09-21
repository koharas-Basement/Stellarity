execute store result score #pixie_count stellarity.misc if entity @e[type=vex,tag=stellarity.pixie]

execute unless score #pixie_count stellarity.misc matches 40.. run function stellarity:mobs/pixie/spawn

# Prevent death animation from playing
tp @s ~ -1000 ~
