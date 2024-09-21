title @s actionbar {"translate":"stellarity.items.spellbooks.natures_wrath.power","fallback":"Your Nature's Wrath grows in power!","color":"dark_green"}

playsound minecraft:block.enchantment_table.use player @s
playsound minecraft:entity.warden.sonic_boom player @s ~ ~ ~ .15 1

particle minecraft:enchant ~ ~1.5 ~ 0 0 0 2 60 normal @s

data modify storage stellarity:temp natures_wrath.book_spirits set value []

advancement grant @s only stellarity:events/items/spellbooks/natures_wrath/been_to_forest 1
advancement grant @s only stellarity:events/items/spellbooks/natures_wrath/been_to_nether 1
advancement grant @s only stellarity:events/items/spellbooks/natures_wrath/been_to_ocean 1
advancement grant @s only stellarity:events/items/spellbooks/natures_wrath/been_to_mountains 1
advancement grant @s only stellarity:events/items/spellbooks/natures_wrath/been_to_jungle 1
advancement grant @s only stellarity:events/items/spellbooks/natures_wrath/been_to_snow 1
advancement grant @s only stellarity:events/items/spellbooks/natures_wrath/been_to_sculk 1
advancement grant @s only stellarity:events/items/spellbooks/natures_wrath/been_to_hallow 1
advancement grant @s only stellarity:events/items/spellbooks/natures_wrath/been_to_swamp 1

advancement revoke @s from stellarity:events/items/spellbooks/natures_wrath/root

item modify entity @s weapon.mainhand stellarity:natures_wrath_update_biomes
