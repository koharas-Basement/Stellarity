execute if data storage kohara:temp {item_nbt:{Item:{id:"minecraft:dragon_egg"}}} run function stellarity:sfx/boss_drop/dragon_egg
execute if data storage kohara:temp {item_nbt:{Item:{id:"minecraft:dragon_breath",count:1}}} run function stellarity:mechanics/cauldron_crafting/dragons_breath/add_tags
execute if data storage kohara:temp {item_nbt:{Item:{id:"minecraft:glowstone_dust",count:1,components:{"minecraft:custom_data":{stellarity.special_item:"starlight_soot"}}}}} run function stellarity:mechanics/consecration/cauldron/add_tags

execute if data storage kohara:temp {item_nbt:{Item:{id:"minecraft:netherite_sword",components:{"minecraft:custom_data":{stellarity.special_item:"dragonblade"}}}}} run function stellarity:sfx/boss_drop/dragonblade

execute if data storage kohara:temp {item_nbt:{Item:{id:"minecraft:netherite_sword",components:{"minecraft:custom_data":{stellarity.special_item:"frigid_harvester"}}}}} run function stellarity:items/frigid_harvester/molten_refund/add_tags

execute if biome ~ ~ ~ #stellarity:hallow run tag @s add stellarity.item

# Boss drop items don't despawn
data modify entity @s[tag=stellarity.boss_drop] Age set value -32768s
