data remove storage stellarity:temp aery_sword.item
data modify storage stellarity:temp aery_sword.item set from entity @p SelectedItem.components."minecraft:custom_data"

# Frostburn
execute if data storage stellarity:temp {aery_sword:{item:{stellarity.aery_sword:{abilities:["frostburn"]}}}} run function stellarity:items/frigid_harvester/abilities/frostburn/apply

# Piercing Cold
execute if data storage stellarity:temp {aery_sword:{item:{stellarity.aery_sword:{abilities:["piercing_cold"]}}}} if predicate kohara:chance/20percent at @s run function stellarity:items/frigid_harvester/abilities/piercing_cold/apply

# Brittle
execute if data storage stellarity:temp {aery_sword:{item:{stellarity.aery_sword:{abilities:["embrittlement"]}}}} at @s run function stellarity:items/frigid_harvester/abilities/embrittlement/apply

# Echo
execute if data storage stellarity:temp {aery_sword:{item:{stellarity.aery_sword:{abilities:["echo"]}}}} at @s run function stellarity:items/frigid_harvester/abilities/echo/apply
