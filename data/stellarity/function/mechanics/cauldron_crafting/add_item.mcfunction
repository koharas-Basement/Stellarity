scoreboard players add @s stellarity.mechanics.cauldron_crafting.items_inside 1

summon item_display ~ ~ ~ {item_display:"ground",teleport_duration:1,Tags:["stellarity.brewing.item_display"],billboard:"vertical"}
data modify entity @n[type=item_display,tag=stellarity.brewing.item_display] item set from entity @n[type=item,distance=..0.5,nbt={Item:{count:1}}] Item
execute unless data entity @n[type=item_display,tag=stellarity.brewing.item_display] item.components run data modify entity @n[type=item_display,tag=stellarity.brewing.item_display] item.components set value {}

execute unless entity @e[type=item_display,distance=..1.1,tag=stellarity.brewing.1] run \
	function stellarity:mechanics/cauldron_crafting/item/add_tag_1
execute unless entity @e[type=item_display,distance=..1.1,tag=stellarity.brewing.2] run \
	function stellarity:mechanics/cauldron_crafting/item/add_tag_2
execute unless entity @e[type=item_display,distance=..1.1,tag=stellarity.brewing.3] run \
	function stellarity:mechanics/cauldron_crafting/item/add_tag_3
execute unless entity @e[type=item_display,distance=..1.1,tag=stellarity.brewing.4] run \
	function stellarity:mechanics/cauldron_crafting/item/add_tag_4
execute unless entity @e[type=item_display,distance=..1.1,tag=stellarity.brewing.5] run \
	function stellarity:mechanics/cauldron_crafting/item/add_tag_5
execute unless entity @e[type=item_display,distance=..1.1,tag=stellarity.brewing.6] run \
	function stellarity:mechanics/cauldron_crafting/item/add_tag_6

summon interaction ~ ~ ~ {width:0.3f,height:0.3f,Tags:["stellarity.brewing.interaction"],response:1b}

execute unless entity @e[type=interaction,distance=..1.1,tag=stellarity.brewing.1] run \
	function stellarity:mechanics/cauldron_crafting/interaction/add_tag_1
execute unless entity @e[type=interaction,distance=..1.1,tag=stellarity.brewing.2] run \
	function stellarity:mechanics/cauldron_crafting/interaction/add_tag_2
execute unless entity @e[type=interaction,distance=..1.1,tag=stellarity.brewing.3] run \
	function stellarity:mechanics/cauldron_crafting/interaction/add_tag_3
execute unless entity @e[type=interaction,distance=..1.1,tag=stellarity.brewing.4] run \
	function stellarity:mechanics/cauldron_crafting/interaction/add_tag_4
execute unless entity @e[type=interaction,distance=..1.1,tag=stellarity.brewing.5] run \
	function stellarity:mechanics/cauldron_crafting/interaction/add_tag_5
execute unless entity @e[type=interaction,distance=..1.1,tag=stellarity.brewing.6] run \
	function stellarity:mechanics/cauldron_crafting/interaction/add_tag_6

kill @n[type=item,distance=..0.5,tag=!stellarity.brewing.ignore,nbt={Item:{count:1}}]
