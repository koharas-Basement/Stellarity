scoreboard players set #cooldown stellarity.misc 24
scoreboard players set #2 stellarity.misc 2

scoreboard players set #upgrades stellarity.misc 0
execute if entity @s[advancements={stellarity:events/items/spellbooks/natures_wrath/been_to_forest=true}] run scoreboard players add #upgrades stellarity.misc 1
execute if entity @s[advancements={stellarity:events/items/spellbooks/natures_wrath/been_to_nether=true}] run scoreboard players add #upgrades stellarity.misc 1
execute if entity @s[advancements={stellarity:events/items/spellbooks/natures_wrath/been_to_ocean=true}] run scoreboard players add #upgrades stellarity.misc 1
execute if entity @s[advancements={stellarity:events/items/spellbooks/natures_wrath/been_to_mountains=true}] run scoreboard players add #upgrades stellarity.misc 1
execute if entity @s[advancements={stellarity:events/items/spellbooks/natures_wrath/been_to_jungle=true}] run scoreboard players add #upgrades stellarity.misc 1
execute if entity @s[advancements={stellarity:events/items/spellbooks/natures_wrath/been_to_snow=true}] run scoreboard players add #upgrades stellarity.misc 1
execute if entity @s[advancements={stellarity:events/items/spellbooks/natures_wrath/been_to_sculk=true}] run scoreboard players add #upgrades stellarity.misc 1
execute if entity @s[advancements={stellarity:events/items/spellbooks/natures_wrath/been_to_hallow=true}] run scoreboard players add #upgrades stellarity.misc 1
execute if entity @s[advancements={stellarity:events/items/spellbooks/natures_wrath/been_to_swamp=true}] run scoreboard players add #upgrades stellarity.misc 1

scoreboard players operation #temp stellarity.misc = #upgrades stellarity.misc
scoreboard players operation #temp stellarity.misc /= #2 stellarity.misc
scoreboard players operation #cooldown stellarity.misc -= #temp stellarity.misc
scoreboard players operation @s stellarity.items.spellbook.natures_wrath.cooldown.shoot = #cooldown stellarity.misc

execute at @s anchored eyes positioned ^ ^ ^ rotated as @s summon marker run function stellarity:items/spellbooks/natures_wrath/spirit/choose_property

#function stellarity:items/spellbooks/effects_all

playsound minecraft:item.book.page_turn player @a ~ ~1 ~ 1 1
particle enchant ~ ~1 ~ .3 .55 .3 0 30 normal

playsound minecraft:entity.shulker.shoot player @a ~ ~ ~ 1 1
