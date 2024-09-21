advancement revoke @s only stellarity:events/items/attack_with_tamaris

execute store result score #enchant stellarity.misc run data get entity @s SelectedItem.tag.Enchantments.[{id:"minecraft:vanishing_curse"}].lvl 10

scoreboard players set #dot.damage stellarity.misc 10
scoreboard players operation #dot.damage stellarity.misc += #enchant stellarity.misc

scoreboard players set #dot.time stellarity.misc 121

scoreboard players set #dot.delay stellarity.misc 30

execute as @e[type=!#stellarity:invalid_targets,nbt={HurtTime:10s},limit=1,sort=nearest] run function stellarity:utils/dot/dark_decay/apply
