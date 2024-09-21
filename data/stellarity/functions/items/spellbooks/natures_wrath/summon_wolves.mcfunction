scoreboard players set @s stellarity.items.spellbook.natures_wrath.cooldown.wolves 800

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

execute at @s run function stellarity:items/spellbooks/natures_wrath/wolves/spawn

function stellarity:items/spellbooks/effects_all
playsound minecraft:entity.evoker.cast_spell player @a
