execute if score #cdamage stellarity.misc matches 3..8 if predicate kohara:chance/20percent run function stellarity:items/frigid_harvester/abilities/chill

execute if score #cdamage stellarity.misc matches 6..8 if predicate kohara:chance/25percent run function stellarity:items/frigid_harvester/abilities/frostburn

execute if score #cdamage stellarity.misc matches 9..16 if predicate kohara:chance/33percent run function stellarity:items/frigid_harvester/abilities/chill_2
execute if score #cdamage stellarity.misc matches 9..16 if predicate kohara:chance/50percent run function stellarity:items/frigid_harvester/abilities/frostburn_2

execute if score #cdamage stellarity.misc matches 17.. if predicate kohara:chance/40percent run function stellarity:items/frigid_harvester/abilities/chill_3
execute if score #cdamage stellarity.misc matches 17.. if predicate kohara:chance/66percent run function stellarity:items/frigid_harvester/abilities/frostburn_3

# Anima conduit is handled directly in 'kill.mcfunction',
# as it is an on-kill effect rather than an on-hit one.
