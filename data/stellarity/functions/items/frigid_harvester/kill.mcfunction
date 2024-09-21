data remove storage stellarity:temp aery_sword.item

data modify storage stellarity:temp aery_sword.item set from entity @s SelectedItem.tag
execute store result score #damage stellarity.misc run data get storage stellarity:temp aery_sword.item."stellarity.aery_sword".damage 100

# Damage gains
# Only goes until +14 damage, or 19 total damage
execute if score #damage stellarity.misc matches ..1399 run function stellarity:items/frigid_harvester/scale

# Anima Conduit
execute if data storage stellarity:temp {aery_sword:{item:{stellarity.aery_sword:{abilities:["anima_conduit"]}}}} run function stellarity:items/frigid_harvester/abilities/anima_conduit/activate

# Frost Barrier
execute if data storage stellarity:temp {aery_sword:{item:{stellarity.aery_sword:{abilities:["frost_barrier"]}}}} run function stellarity:items/frigid_harvester/abilities/frost_barrier/dr

tag @s add stellarity.items.frigid_harvester.remove_adv
schedule function stellarity:items/frigid_harvester/remove_adv/schedule 1t append
