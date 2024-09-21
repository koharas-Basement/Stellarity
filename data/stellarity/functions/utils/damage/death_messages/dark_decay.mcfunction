execute store result score #msg kohara.misc run random value 1..3

execute if score #msg kohara.misc matches 1 run tellraw @a {"translate":"stellarity.death_messages.dot.dark_decay.1","fallback":"%1$s decayed to nothingness","with":[{"selector":"@s"}]}

execute if score #msg kohara.misc matches 2 run tellraw @a {"translate":"stellarity.death_messages.dot.dark_decay.2","fallback":"%1$s decayed away","with":[{"selector":"@s"}]}

execute if score #msg kohara.misc matches 3 run tellraw @a {"translate":"stellarity.death_messages.dot.dark_decay.3","fallback":"%1$s became a pile of dust","with":[{"selector":"@s"}]}
