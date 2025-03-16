advancement revoke @s only stellarity:event/item/crest/block

execute unless score @s stellarity.items.crest.bonus_dmg matches 3.. run scoreboard players add @s stellarity.items.crest.bonus_dmg 1
scoreboard players set @s stellarity.items.crest.time 80

attribute @s attack_damage modifier remove stellarity:crest
attribute @s[scores={stellarity.items.crest.bonus_dmg=1}] \
	attack_damage modifier add stellarity:crest 0.15 add_multiplied_base
attribute @s[scores={stellarity.items.crest.bonus_dmg=2}] \
	attack_damage modifier add stellarity:crest 0.3 add_multiplied_base
attribute @s[scores={stellarity.items.crest.bonus_dmg=3}] \
	attack_damage modifier add stellarity:crest 0.45 add_multiplied_base

title @s[scores={stellarity.items.crest.bonus_dmg=1}] actionbar \
	[{"text":"• ","color":"#2A2A2A"},{"text":"🛡 ","color":"#731590"},{"text":"⬛","color":"#B921E7"},{"text":"⬛⬛","color":"#2C2C2C"},{"text":" 🛡","color":"#731590"},{"text":" •","color":"#2A2A2A"}]

title @s[scores={stellarity.items.crest.bonus_dmg=2}] actionbar \
	[{"text":"• ","color":"#2A2A2A"},{"text":"🛡 ","color":"#731590"},{"text":"⬛⬛","color":"#B921E7"},{"text":"⬛","color":"#2C2C2C"},{"text":" 🛡","color":"#731590"},{"text":" •","color":"#2A2A2A"}]

title @s[scores={stellarity.items.crest.bonus_dmg=3}] actionbar \
	[{"text":"• ","color":"#2A2A2A"},{"text":"🛡 ","color":"#731590"},{"text":"⬛⬛⬛","color":"#B921E7"},{"text":" 🛡","color":"#731590"},{"text":" •","color":"#2A2A2A"}]

playsound minecraft:entity.ender_dragon.flap player @a[distance=0..] ~ ~ ~ 0.8 1.5
playsound minecraft:entity.iron_golem.repair player @a[distance=0..] ~ ~ ~ .75 0.9
