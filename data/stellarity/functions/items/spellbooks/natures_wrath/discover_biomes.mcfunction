title @s actionbar {"translate":"stellarity.items.spellbooks.natures_wrath.power","fallback":"Your Nature's Wrath grows in power!","color":"dark_green"}

playsound minecraft:block.enchantment_table.use player @s
playsound minecraft:entity.warden.sonic_boom player @s ~ ~ ~ .15 1

particle minecraft:enchant ~ ~1.5 ~ 0 0 0 2 60 normal @s

data remove storage stellarity:temp natures_wrath.book_spirits
data modify storage stellarity:temp natures_wrath.book_spirits set from entity @s SelectedItem.tag."stellarity.spirits"
execute unless data storage stellarity:temp natures_wrath.book_spirits run data modify storage stellarity:temp natures_wrath.book_spirits set value []

execute if entity \
	@s[advancements={stellarity:events/items/spellbooks/natures_wrath/been_to_forest=true}] run \
	data modify storage stellarity:temp natures_wrath.book_spirits append value "forest"
execute if entity \
	@s[advancements={stellarity:events/items/spellbooks/natures_wrath/been_to_nether=true}] run \
	data modify storage stellarity:temp natures_wrath.book_spirits append value "fire"
execute if entity \
	@s[advancements={stellarity:events/items/spellbooks/natures_wrath/been_to_ocean=true}] run \
	data modify storage stellarity:temp natures_wrath.book_spirits append value "ocean"
execute if entity \
	@s[advancements={stellarity:events/items/spellbooks/natures_wrath/been_to_mountains=true}] run \
	data modify storage stellarity:temp natures_wrath.book_spirits append value "mountain"
execute if entity \
	@s[advancements={stellarity:events/items/spellbooks/natures_wrath/been_to_jungle=true}] run \
	data modify storage stellarity:temp natures_wrath.book_spirits append value "jungle"
execute if entity \
	@s[advancements={stellarity:events/items/spellbooks/natures_wrath/been_to_snow=true}] run \
	data modify storage stellarity:temp natures_wrath.book_spirits append value "snow"
execute if entity \
	@s[advancements={stellarity:events/items/spellbooks/natures_wrath/been_to_sculk=true}] run \
	data modify storage stellarity:temp natures_wrath.book_spirits append value "sculk"
execute if entity \
	@s[advancements={stellarity:events/items/spellbooks/natures_wrath/been_to_hallow=true}] run \
	data modify storage stellarity:temp natures_wrath.book_spirits append value "hallowed"
execute if entity \
	@s[advancements={stellarity:events/items/spellbooks/natures_wrath/been_to_swamp=true}] run \
	data modify storage stellarity:temp natures_wrath.book_spirits append value "swamp"

advancement revoke @s from stellarity:events/items/spellbooks/natures_wrath/root

item modify entity @s weapon.mainhand stellarity:natures_wrath_update_biomes
