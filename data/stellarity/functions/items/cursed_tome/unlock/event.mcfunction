execute store success score #has_tome stellarity.misc run clear @s written_book{stellarity.special_item:"cursed_tome"} 0

execute if score #has_tome stellarity.misc matches 1 run function stellarity:items/cursed_tome/unlock/effects
