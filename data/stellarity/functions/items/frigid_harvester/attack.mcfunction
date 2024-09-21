advancement revoke @s only stellarity:events/items/attack/upgraded_aery_sword

# #cdamage stands for 'current damage'
# Idk if it would conflict with #damage in 'kill.mcfunction',
# but I am not taking any risks
data remove storage stellarity:temp aery_sword.item
data modify storage stellarity:temp aery_sword.item set from entity @s SelectedItem.tag

# Frostburn
execute if data storage stellarity:temp {aery_sword:{item:{stellarity.aery_sword:{abilities:["frostburn"]}}}} as @e[type=!#kohara:invalid_targets,nbt={HurtTime:10s},limit=1,sort=nearest] run function stellarity:items/frigid_harvester/abilities/frostburn/apply

# Piercing Cold
execute if data storage stellarity:temp {aery_sword:{item:{stellarity.aery_sword:{abilities:["piercing_cold"]}}}} as @e[type=!#kohara:invalid_targets,nbt={HurtTime:10s},limit=1,sort=nearest] if predicate kohara:chance/50percent at @s run function stellarity:items/frigid_harvester/abilities/piercing_cold/apply
