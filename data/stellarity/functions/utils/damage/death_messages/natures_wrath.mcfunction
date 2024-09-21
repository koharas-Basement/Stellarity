execute store result score #msg kohara.misc run random value 1..2

execute if score #msg kohara.misc matches 1 run tellraw @a {"translate":"stellarity.death_messages.natures_wrath.1","fallback":"%1$s felt nature's revenge with help of %2$s","with":[{"selector":"@s"},{"selector":"@p[predicate=stellarity:items/spellbooks/holding_natures_wrath]"}]}

execute if score #msg kohara.misc matches 2 run tellraw @a {"translate":"stellarity.death_messages.natures_wrath.2","fallback":"%1$s realized nature has no equals with help of %2$s","with":[{"selector":"@s"},{"selector":"@p[predicate=stellarity:items/spellbooks/holding_natures_wrath]"}]}
