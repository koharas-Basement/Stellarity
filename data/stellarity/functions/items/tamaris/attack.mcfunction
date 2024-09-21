advancement revoke @s only stellarity:events/items/attack/tamaris

execute store result score #enchant stellarity.misc run data get entity @s SelectedItem.tag.Enchantments.[{id:"minecraft:vanishing_curse"}].lvl 1

scoreboard players set #dot.damage stellarity.misc 10

scoreboard players set #dot.time stellarity.misc 121
scoreboard players set #dot.delay stellarity.misc 30

execute as @e[type=!#kohara:invalid_targets,distance=0.1..10,nbt={HurtTime:10s},limit=1,sort=nearest] run function stellarity:utils/status_effects/dark_decay/apply
