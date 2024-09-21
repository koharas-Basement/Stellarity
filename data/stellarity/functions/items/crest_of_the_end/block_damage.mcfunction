advancement revoke @s only stellarity:events/items/crest/block

execute unless score @s stellarity.items.crest.bonus_dmg matches 3.. run scoreboard players add @s stellarity.items.crest.bonus_dmg 1
scoreboard players set @s stellarity.items.crest.time 50

attribute @s generic.attack_damage modifier remove 09ba2f70-0cdf-4c47-b2c9-9ccf0ef901fb
attribute @s[scores={stellarity.items.crest.bonus_dmg=1}] \
	generic.attack_damage modifier add 09ba2f70-0cdf-4c47-b2c9-9ccf0ef901fb "stellarity.crest" 0.15 multiply_base
attribute @s[scores={stellarity.items.crest.bonus_dmg=2}] \
	generic.attack_damage modifier add 09ba2f70-0cdf-4c47-b2c9-9ccf0ef901fb "stellarity.crest" 0.3 multiply_base
attribute @s[scores={stellarity.items.crest.bonus_dmg=3}] \
	generic.attack_damage modifier add 09ba2f70-0cdf-4c47-b2c9-9ccf0ef901fb "stellarity.crest" 0.45 multiply_base

title @s[scores={stellarity.items.crest.bonus_dmg=1}] actionbar \
	[{"text":"• ","color":"#2A2A2A"},{"text":"🛡 ","color":"#731590"},{"text":"⬛","color":"#B921E7"},{"text":"⬛⬛","color":"#2C2C2C"},{"text":" 🛡","color":"#731590"},{"text":" •","color":"#2A2A2A"}]

title @s[scores={stellarity.items.crest.bonus_dmg=2}] actionbar \
	[{"text":"• ","color":"#2A2A2A"},{"text":"🛡 ","color":"#731590"},{"text":"⬛⬛","color":"#B921E7"},{"text":"⬛","color":"#2C2C2C"},{"text":" 🛡","color":"#731590"},{"text":" •","color":"#2A2A2A"}]

title @s[scores={stellarity.items.crest.bonus_dmg=3}] actionbar \
	[{"text":"• ","color":"#2A2A2A"},{"text":"🛡 ","color":"#731590"},{"text":"⬛⬛⬛","color":"#B921E7"},{"text":" 🛡","color":"#731590"},{"text":" •","color":"#2A2A2A"}]

playsound minecraft:entity.ender_dragon.flap player @a[distance=0..] ~ ~ ~ 0.8 1.5
playsound minecraft:entity.iron_golem.repair player @a[distance=0..] ~ ~ ~ .75 0.9
