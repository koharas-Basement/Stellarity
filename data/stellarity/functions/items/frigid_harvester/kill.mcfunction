execute store result score #damage kohara.misc run data get entity @s SelectedItem.tag."stellarity.aery_sword.damage" 100

# Mostly passive mobs
execute if entity @s[advancements={stellarity:events/items/kill_with_aery_sword={minor=true}}] run \
	scoreboard players set #damage_extra stellarity.misc 7

# Weaker mobs, like e.g. Zombies, Skeletons, Endermen
execute if entity @s[advancements={stellarity:events/items/kill_with_aery_sword={small=true}}] run \
	scoreboard players set #damage_extra stellarity.misc 14

# Stronger foes, like e.g. Creepers, Vindicators
execute if entity @s[advancements={stellarity:events/items/kill_with_aery_sword={big=true}}] run \
	scoreboard players set #damage_extra stellarity.misc 24

# Rarer stronger mobs. Evokers, Illusioners, Ravagers...
execute if entity @s[advancements={stellarity:events/items/kill_with_aery_sword={large=true}}] run \
	scoreboard players set #damage_extra stellarity.misc 35

# Wardens, Withers, datapack bosses
execute if entity @s[advancements={stellarity:events/items/kill_with_aery_sword={huge=true}}] run \
	scoreboard players set #damage_extra stellarity.misc 67
execute if entity @s[advancements={stellarity:events/items/kill_with_aery_sword={boss=true}}] run \
	scoreboard players set #damage_extra stellarity.misc 67

execute if score #damage kohara.misc matches ..1699 run function stellarity:items/frigid_harvester/scale
execute if score #damage kohara.misc matches 1700.. run tag @s add stellarity.anima_conduit
execute if score #damage kohara.misc matches 1700.. run schedule function stellarity:items/frigid_harvester/abilities/anima_conduit_scheduled 1t append

tag @s add stellarity.items.frigid_harvester.remove_adv
schedule function stellarity:items/frigid_harvester/remove_adv/schedule 1t append
