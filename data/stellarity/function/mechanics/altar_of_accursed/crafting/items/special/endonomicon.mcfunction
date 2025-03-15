scoreboard players set #lavender stellarity.misc 0

function stellarity:mechanics/altar_of_accursed/crafting/items/special/endonomicon_cause_parse_errors/lavender

execute if score #lavender stellarity.misc matches 0 run loot spawn ~ ~-0.4 ~ loot stellarity:items/endonomicon/no_lavender

function stellarity:mechanics/altar_of_accursed/crafting/global_effects
