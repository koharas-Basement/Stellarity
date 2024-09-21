scoreboard players set #cooldown stellarity.misc 20
scoreboard players set #2 stellarity.misc 2

scoreboard players set #upgrades stellarity.misc 0
data remove storage stellarity:temp natures_wrath.spirits
data modify storage stellarity:temp natures_wrath.spirits set from entity @s SelectedItem.tag."stellarity.spirits"
execute store result score #upgrades stellarity.misc run data get storage stellarity:temp natures_wrath.spirits

scoreboard players operation #temp stellarity.misc = #upgrades stellarity.misc
scoreboard players operation #temp stellarity.misc /= #2 stellarity.misc
scoreboard players operation #cooldown stellarity.misc -= #temp stellarity.misc
scoreboard players operation @s stellarity.items.spellbook.natures_wrath.cooldown.shoot = #cooldown stellarity.misc

execute anchored eyes positioned ^ ^ ^ anchored feet run function stellarity:items/spellbooks/natures_wrath/spirit/raycast/start_ray

execute anchored eyes positioned ^ ^ ^ summon marker run function stellarity:items/spellbooks/natures_wrath/spirit/choose_property

#function stellarity:items/spellbooks/effects_all

playsound minecraft:item.book.page_turn player @a[distance=0..] ~ ~1 ~ 1 1
playsound minecraft:item.book.page_turn player @a[distance=0..] ~ ~1 ~ 1 0.7
particle enchant ~ ~1 ~ .4 .55 .4 0 30 normal

playsound minecraft:item.book.page_turn player @a[distance=0..] ~ ~1 ~ 1 1
playsound minecraft:block.enchantment_table.use player @a[distance=0..] ~ ~ ~ 0.2 1
#playsound minecraft:entity.ender_eye.launch player @a[distance=0..] ~ ~ ~ 1 1
