execute if score #cdamage stellarity.misc matches 300..899 if predicate stellarity:utils/chance/20percent run function stellarity:items/frigid_harvester/abilities/chill
execute if score #cdamage stellarity.misc matches 600..899 if predicate stellarity:utils/chance/25percent run function stellarity:items/frigid_harvester/abilities/frostburn

execute if score #cdamage stellarity.misc matches 900.. if predicate stellarity:utils/chance/33percent run function stellarity:items/frigid_harvester/abilities/chill_2
execute if score #cdamage stellarity.misc matches 900.. if predicate stellarity:utils/chance/50percent run function stellarity:items/frigid_harvester/abilities/frostburn_2
