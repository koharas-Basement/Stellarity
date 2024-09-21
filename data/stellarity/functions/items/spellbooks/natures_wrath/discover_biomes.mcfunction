execute store success score #has_book stellarity.misc run clear @s knowledge_book{stellarity.special_item:"natures_wrath"} 0

execute if score #has_book stellarity.misc matches 1 run function stellarity:items/spellbooks/natures_wrath/discover_fx
