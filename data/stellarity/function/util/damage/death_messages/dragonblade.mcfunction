execute store result score #msg kohara.misc run random value 1..3

execute if score #msg kohara.misc matches 1 run tellraw @a {"translate":"stellarity.death_messages.dragonblade","with":[{"selector":"@s"},{"selector":"@p[predicate=stellarity:item/holding/dragonblade]"}]}

execute if score #msg kohara.misc matches 2 run tellraw @a {"translate":"stellarity.death_messages.dragonblade.2","with":[{"selector":"@s"},{"selector":"@p[predicate=stellarity:item/holding/dragonblade]"}]}

execute if score #msg kohara.misc matches 3 run tellraw @a {"translate":"stellarity.death_messages.dragonblade.3","with":[{"selector":"@s"},{"selector":"@p[predicate=stellarity:item/holding/dragonblade]"}]}
