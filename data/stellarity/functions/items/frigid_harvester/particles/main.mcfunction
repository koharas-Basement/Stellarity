execute store result score @s stellarity.items.aery_sword.damage run data get entity @s SelectedItem.tag."stellarity.aery_sword.damage" 1

execute if score @s stellarity.items.aery_sword.damage matches 0..2 run function stellarity:items/frigid_harvester/particles/1
execute if score @s stellarity.items.aery_sword.damage matches 3..5 run function stellarity:items/frigid_harvester/particles/2
execute if score @s stellarity.items.aery_sword.damage matches 6..8 run function stellarity:items/frigid_harvester/particles/3
execute if score @s stellarity.items.aery_sword.damage matches 9..16 run function stellarity:items/frigid_harvester/particles/4
execute if score @s stellarity.items.aery_sword.damage matches 17.. run function stellarity:items/frigid_harvester/particles/5
