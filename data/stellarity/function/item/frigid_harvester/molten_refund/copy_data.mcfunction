data modify storage stellarity:temp aery_sword.molten_refund set from entity @s Item

function stellarity:item/frigid_harvester/molten_refund/macro with storage stellarity:temp aery_sword.molten_refund

summon item ~ ~ ~ {Item:{id:"minecraft:netherite_ingot",count:1}}
summon item ~ ~ ~ {Item:{id:"minecraft:netherite_upgrade_smithing_template",count:1}}

particle poof ~ ~ ~ 0.1 0.1 0.1 0 7

kill @s
