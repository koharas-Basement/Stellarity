scoreboard players set #lavender stellarity.misc 0

function stellarity:mechanic/altar_of_accursed/crafting/items/special/endonomicon_cause_parse_errors/lavender

execute if score #lavender stellarity.misc matches 0 run loot spawn ~ ~-0.4 ~ loot stellarity:item/endonomicon/no_lavender

function stellarity:mechanic/altar_of_accursed/crafting/global_effects
