execute store result score #msg kohara.misc run random value 1..2

execute if score #msg kohara.misc matches 1 run tellraw @a {"translate":"stellarity.death_messages.carcanet.1","fallback":"%1$s was struck too hard by %2$s's star","with":[{"selector":"@s"},{"selector":"@p[predicate=stellarity:items/holding/trinkets/starstruck_carcanet]"}]}

execute if score #msg kohara.misc matches 2 run tellraw @a {"translate":"stellarity.death_messages.carcanet.2","fallback":"%1$s received help with meeting the sky from %2$s","with":[{"selector":"@s"},{"selector":"@p[predicate=stellarity:items/holding/trinkets/starstruck_carcanet]"}]}
