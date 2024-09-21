data modify storage stellarity:temp aery_sword.lore set from entity @s SelectedItem.tag.display.Lore
data remove storage stellarity:temp aery_sword.lore[-1]

execute store result score #damage stellarity.misc run data get entity @s SelectedItem.tag."stellarity.aery_sword.damage" 100

execute if entity @s[advancements={stellarity:events/items/kill_with_aery_sword={minor=true}}] run scoreboard players set #damage_extra stellarity.misc 6
execute if entity @s[advancements={stellarity:events/items/kill_with_aery_sword={small=true}}] run scoreboard players set #damage_extra stellarity.misc 12
execute if entity @s[advancements={stellarity:events/items/kill_with_aery_sword={big=true}}] run scoreboard players set #damage_extra stellarity.misc 23
execute if entity @s[advancements={stellarity:events/items/kill_with_aery_sword={large=true}}] run scoreboard players set #damage_extra stellarity.misc 33
execute if entity @s[advancements={stellarity:events/items/kill_with_aery_sword={huge=true}}] run scoreboard players set #damage_extra stellarity.misc 67
execute if entity @s[advancements={stellarity:events/items/kill_with_aery_sword={boss=true}}] run scoreboard players set #damage_extra stellarity.misc 67

# Contants
scoreboard players set #2 stellarity.misc 2
scoreboard players set #100 stellarity.misc 100

# Scaling
scoreboard players operation #temp3 stellarity.misc = #damage stellarity.misc
scoreboard players operation #temp3 stellarity.misc /= #100 stellarity.misc
scoreboard players operation #temp3 stellarity.misc /= #2 stellarity.misc
scoreboard players operation #damage_extra stellarity.misc /= #temp3 stellarity.misc

execute if score #damage stellarity.misc matches 1300.. run scoreboard players operation #damage_extra stellarity.misc /= #2 stellarity.misc
execute if score #damage stellarity.misc matches 1500.. run scoreboard players operation #damage_extra stellarity.misc /= #2 stellarity.misc
execute if score #damage stellarity.misc matches 1700.. run scoreboard players operation #damage_extra stellarity.misc /= #3 stellarity.misc

execute unless score #damage_extra stellarity.misc matches 0..1 run function stellarity:items/frigid_harvester/continue

# Advancement for getting +9 damage
execute if score #damage stellarity.misc matches 900.. run advancement grant @s only stellarity:exploration/max_out_aery_sword

tag @s add stellarity.items.frigid_harvester.remove_adv
schedule function stellarity:items/frigid_harvester/remove_adv/schedule 1t append
