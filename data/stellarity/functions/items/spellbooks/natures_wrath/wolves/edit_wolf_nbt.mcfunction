particle explosion ~ ~ ~

execute if score #upgrades stellarity.misc matches ..1 run function stellarity:items/spellbooks/natures_wrath/wolves/levels/1
execute if score #upgrades stellarity.misc matches 2..3 run function stellarity:items/spellbooks/natures_wrath/wolves/levels/2
execute if score #upgrades stellarity.misc matches 4..6 run function stellarity:items/spellbooks/natures_wrath/wolves/levels/3
execute if score #upgrades stellarity.misc matches 7..8 run function stellarity:items/spellbooks/natures_wrath/wolves/levels/4
execute if score #upgrades stellarity.misc matches 9.. run function stellarity:items/spellbooks/natures_wrath/wolves/levels/5

attribute @s generic.follow_range base set 24

data modify entity @s CollarColor set value 3b

execute store result entity @s Health float 1 run scoreboard players get #hp stellarity.misc

data modify entity @s CustomName set value '{"translate":"stellarity.items.spellbooks.natures_wrath.spirit_wolf","fallback":"Spirit Wolf","color":"aqua"}'
execute if predicate kohara:chance/5percent run data modify entity @s CustomName set value '{"text":"Bluey","color":"blue"}'

data modify entity @s Owner set from entity @p UUID
