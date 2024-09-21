function stellarity:items/cursed_tome/get_hand

execute if score #mainhand stellarity.misc matches 1 run data modify storage stellarity:temp cursed_tome.data set from entity @s SelectedItem.tag.pages
execute if score #offhand stellarity.misc matches 1 run data modify storage stellarity:temp cursed_tome.data set from entity @s Inventory.[{Slot:-106b}].tag.pages

execute if entity @s[advancements={stellarity:cursed_tome/shulker_things=true}] run function stellarity:items/cursed_tome/update/shulker_stuff
execute if entity @s[advancements={stellarity:cursed_tome/frigid_harvester=true}] run function stellarity:items/cursed_tome/update/frigid_harvester
execute if entity @s[advancements={stellarity:cursed_tome/chorus_champion_armor=true}] run function stellarity:items/cursed_tome/update/chorus_champion_armor
execute if entity @s[advancements={stellarity:cursed_tome/clockwork_crossbow=true}] run function stellarity:items/cursed_tome/update/clockwork_crossbow
execute if entity @s[advancements={stellarity:cursed_tome/hallowed_armor=true}] run function stellarity:items/cursed_tome/update/hallowed_armor
execute if entity @s[advancements={stellarity:cursed_tome/pandoras_barrel=true}] run function stellarity:items/cursed_tome/update/pandoras_barrel
execute if entity @s[advancements={stellarity:cursed_tome/prismatic_punch=true}] run function stellarity:items/cursed_tome/update/prismatic_punch
execute if entity @s[advancements={stellarity:cursed_tome/prismatic_pearl=true}] run function stellarity:items/cursed_tome/update/prismatic_pearl
execute if entity @s[advancements={stellarity:cursed_tome/sharanga=true}] run function stellarity:items/cursed_tome/update/sharanga
execute if entity @s[advancements={stellarity:cursed_tome/spirit_dagger=true}] run function stellarity:items/cursed_tome/update/spirit_dagger
execute if entity @s[advancements={stellarity:cursed_tome/tamaris=true}] run function stellarity:items/cursed_tome/update/tamaris
execute if entity @s[advancements={stellarity:cursed_tome/zephyr=true}] run function stellarity:items/cursed_tome/update/zephyr
execute if entity @s[advancements={stellarity:cursed_tome/spellbooks/conveyance=true}] run function stellarity:items/cursed_tome/update/spellbooks/conveyance
execute if entity @s[advancements={stellarity:cursed_tome/spellbooks/light=true}] run function stellarity:items/cursed_tome/update/spellbooks/light
execute if entity @s[advancements={stellarity:cursed_tome/spellbooks/updraft=true}] run function stellarity:items/cursed_tome/update/spellbooks/updraft
execute if entity @s[advancements={stellarity:cursed_tome/trinkets/crest_of_the_end=true}] run function stellarity:items/cursed_tome/update/trinkets/crest_of_the_end
execute if entity @s[advancements={stellarity:cursed_tome/trinkets/duskberry=true}] run function stellarity:items/cursed_tome/update/trinkets/duskberry
execute if entity @s[advancements={stellarity:cursed_tome/trinkets/ender_insignia=true}] run function stellarity:items/cursed_tome/update/trinkets/ender_insignia
execute if entity @s[advancements={stellarity:cursed_tome/trinkets/starstruck_carcanet=true}] run function stellarity:items/cursed_tome/update/trinkets/starstruck_carcanet
execute if entity @s[advancements={stellarity:cursed_tome/stella=true}] run function stellarity:items/cursed_tome/update/stella
execute if entity @s[advancements={stellarity:cursed_tome/kaleidoscope=true}] run function stellarity:items/cursed_tome/update/kaleidoscope
execute if entity @s[advancements={stellarity:cursed_tome/trinkets/soaring_insignia=true}] run function stellarity:items/cursed_tome/update/trinkets/soaring_insignia
execute if entity @s[advancements={stellarity:cursed_tome/dragonblade=true}] run function stellarity:items/cursed_tome/update/dragonblade
execute if entity @s[advancements={stellarity:cursed_tome/sariel=true}] run function stellarity:items/cursed_tome/update/sariel
execute if entity @s[advancements={stellarity:cursed_tome/spellbooks/natures_wrath=true}] run function stellarity:items/cursed_tome/update/spellbooks/natures_wrath

execute if score #mainhand stellarity.misc matches 1 run item modify entity @s weapon.mainhand stellarity:cursed_tome_update
execute if score #offhand stellarity.misc matches 1 run item modify entity @s weapon.offhand stellarity:cursed_tome_update
