execute store result score #msg kohara.misc run random value 1..3

execute if score #msg kohara.misc matches 1 run tellraw @a {"translate":"stellarity.death_messages.kaleidoscope.1","fallback":"%1$s couldn't stand %2$s's heat","with":[{"selector":"@s"},{"selector":"@p[predicate=stellarity:items/holding_kaleidoscope]"}]}

execute if score #msg kohara.misc matches 2 run tellraw @a {"translate":"stellarity.death_messages.kaleidoscope.2","fallback":"%1$s was turned inside out by %2$s's power from the sun","with":[{"selector":"@s"},{"selector":"@p[predicate=stellarity:items/holding_kaleidoscope]"}]}

execute if score #msg kohara.misc matches 3 run tellraw @a {"translate":"stellarity.death_messages.kaleidoscope.3","fallback":"%1$s got badly sunburned by %2$s","with":[{"selector":"@s"},{"selector":"@p[predicate=stellarity:items/holding_kaleidoscope]"}]}
