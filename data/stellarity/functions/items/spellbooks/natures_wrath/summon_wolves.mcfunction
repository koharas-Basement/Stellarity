scoreboard players set @s stellarity.items.spellbook.natures_wrath.cooldown.wolves 44

scoreboard players set #upgrades stellarity.misc 0
data remove storage stellarity:temp natures_wrath.spirits
data modify storage stellarity:temp natures_wrath.spirits set from entity @s SelectedItem.tag."stellarity.spirits"
execute store result score #upgrades stellarity.misc run data get storage stellarity:temp natures_wrath.spirits

function stellarity:items/spellbooks/natures_wrath/wolves/spawn

function stellarity:items/spellbooks/effects_all
playsound minecraft:entity.evoker.cast_spell player @a[distance=0..]
