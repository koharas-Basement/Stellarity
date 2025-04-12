execute store result score #msg kohara.misc run random value 1..2

execute if score #msg kohara.misc matches 1 run tellraw @a {"translate":"stellarity.death_messages.dot.prismaric_inferno.1","with":[{"selector":"@s"}]}

execute if score #msg kohara.misc matches 2 run tellraw @a {"translate":"stellarity.death_messages.dot.prismaric_inferno.2","with":[{"selector":"@s"}]}
