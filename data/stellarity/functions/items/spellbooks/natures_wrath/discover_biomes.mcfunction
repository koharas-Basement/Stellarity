title @s actionbar {"translate":"stellarity.items.spellbooks.natures_wrath.power","fallback":"Your Nature's Wrath grows in power!","color":"dark_green"}

playsound minecraft:block.enchantment_table.use player @s
playsound minecraft:entity.warden.sonic_boom player @s ~ ~ ~ .15 1

particle minecraft:enchant ~ ~1.5 ~ 0 0 0 2 60 normal @s

data remove storage stellarity:temp natures_wrath.book_spirits
data modify storage stellarity:temp natures_wrath.book_spirits set from entity @s SelectedItem.tag."stellarity.spirits"
execute unless data storage stellarity:temp natures_wrath.book_spirits run data modify storage stellarity:temp natures_wrath.book_spirits set value []

execute if entity \
	@s[advancements={stellarity:events/items/spellbooks/natures_wrath/been_to_forest=true}] run \
	function stellarity:items/spellbooks/natures_wrath/discover/forest
execute if entity \
	@s[advancements={stellarity:events/items/spellbooks/natures_wrath/been_to_nether=true}] run \
	function stellarity:items/spellbooks/natures_wrath/discover/fire
execute if entity \
	@s[advancements={stellarity:events/items/spellbooks/natures_wrath/been_to_ocean=true}] run \
	function stellarity:items/spellbooks/natures_wrath/discover/ocean
execute if entity \
	@s[advancements={stellarity:events/items/spellbooks/natures_wrath/been_to_mountains=true}] run \
	function stellarity:items/spellbooks/natures_wrath/discover/mountain
execute if entity \
	@s[advancements={stellarity:events/items/spellbooks/natures_wrath/been_to_jungle=true}] run \
	function stellarity:items/spellbooks/natures_wrath/discover/jungle
execute if entity \
	@s[advancements={stellarity:events/items/spellbooks/natures_wrath/been_to_snow=true}] run \
	function stellarity:items/spellbooks/natures_wrath/discover/snow
execute if entity \
	@s[advancements={stellarity:events/items/spellbooks/natures_wrath/been_to_sculk=true}] run \
	function stellarity:items/spellbooks/natures_wrath/discover/sculk
execute if entity \
	@s[advancements={stellarity:events/items/spellbooks/natures_wrath/been_to_hallow=true}] run \
	function stellarity:items/spellbooks/natures_wrath/discover/hallowed
execute if entity \
	@s[advancements={stellarity:events/items/spellbooks/natures_wrath/been_to_swamp=true}] run \
	function stellarity:items/spellbooks/natures_wrath/discover/swamp

advancement revoke @s from stellarity:events/items/spellbooks/natures_wrath/root

item modify entity @s weapon.mainhand stellarity:natures_wrath_update_biomes
