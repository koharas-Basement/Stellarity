particle end_rod ~ ~0.4 ~ 0 0 0 0 1 normal

scoreboard players add @s stellarity.misc 1
execute if score @s stellarity.misc matches 19..23 if predicate kohara:chance/15percent run function stellarity:items/pandoras_barrel/animation/item/kill
execute if score @s stellarity.misc matches 24.. run function stellarity:items/pandoras_barrel/animation/item/kill
