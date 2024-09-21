execute store result score #msg kohara.misc run random value 1..3

execute if score #msg kohara.misc matches 1 run tellraw @a {"translate":"stellarity.death_messages.dragonblade","fallback":"%1$s was punched into the otherworld by %2$s","with":[{"selector":"@s"},{"selector":"@p[predicate=stellarity:items/holding/dragonblade]"}]}

execute if score #msg kohara.misc matches 2 run tellraw @a {"translate":"stellarity.death_messages.dragonblade.2","fallback":"%1$s was punched a bit too hard by %2$s","with":[{"selector":"@s"},{"selector":"@p[predicate=stellarity:items/holding/dragonblade]"}]}

execute if score #msg kohara.misc matches 3 run tellraw @a {"translate":"stellarity.death_messages.dragonblade.3","fallback":"%1$s was warped into another reality by %2$s","with":[{"selector":"@s"},{"selector":"@p[predicate=stellarity:items/holding/dragonblade]"}]}
