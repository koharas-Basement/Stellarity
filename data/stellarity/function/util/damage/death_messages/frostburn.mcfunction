execute store result score #msg kohara.misc run random value 1..2

execute if score #msg kohara.misc matches 1 run tellraw @a {"translate":"stellarity.death_messages.dot.frostburn.1","fallback":"%1$s was turned into an icicle","with":[{"selector":"@s"}]}

execute if score #msg kohara.misc matches 2 run tellraw @a {"translate":"stellarity.death_messages.dot.frostburn.2","fallback":"%1$s's blood froze","with":[{"selector":"@s"}]}
