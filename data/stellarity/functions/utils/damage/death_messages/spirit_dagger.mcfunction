execute store result score #msg kohara.misc run random value 1..3

execute if score #msg kohara.misc matches 1 run tellraw @a {"translate":"stellarity.death_messages.spirit_dagger.1","fallback":"%1$s had their spirit consumed by %2$s","with":[{"selector":"@s"},{"selector":"@p[predicate=stellarity:items/spirit_dagger/holding]"}]}

execute if score #msg kohara.misc matches 2 run tellraw @a {"translate":"stellarity.death_messages.spirit_dagger.2","fallback":"%1$s was slashed in half by %2$s","with":[{"selector":"@s"},{"selector":"@p[predicate=stellarity:items/spirit_dagger/holding]"}]}

execute if score #msg kohara.misc matches 3 run tellraw @a {"translate":"stellarity.death_messages.spirit_dagger.3","fallback":"%1$s was assasinated by %2$s","with":[{"selector":"@s"},{"selector":"@p[predicate=stellarity:items/spirit_dagger/holding]"}]}
