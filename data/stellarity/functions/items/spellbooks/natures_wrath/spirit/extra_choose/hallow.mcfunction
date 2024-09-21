data modify storage stellarity:temp "natures_wrath.spells" append value "hallow"

execute store result score #undead stellarity.misc if entity @e[type=#stellarity:undead,distance=..9]
execute if score #undead stellarity.misc matches 3.. run data modify storage stellarity:temp "natures_wrath.spells" append value "hallow"
execute if score #undead stellarity.misc matches 3.. run data modify storage stellarity:temp "natures_wrath.spells" append value "hallow"
