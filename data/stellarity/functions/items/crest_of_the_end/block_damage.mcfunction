advancement revoke @s only stellarity:events/items/use_crest

execute unless score @s stellarity.items.crest.bonus_dmg matches 8.. run scoreboard players add @s stellarity.items.crest.bonus_dmg 1

attribute @s generic.attack_damage modifier remove 09ba2f70-0cdf-4c47-b2c9-9ccf0ef901fb
attribute @s[scores={stellarity.items.crest.bonus_dmg=1}] generic.attack_damage modifier add 09ba2f70-0cdf-4c47-b2c9-9ccf0ef901fb "stellarity.crest" 1 add
attribute @s[scores={stellarity.items.crest.bonus_dmg=2}] generic.attack_damage modifier add 09ba2f70-0cdf-4c47-b2c9-9ccf0ef901fb "stellarity.crest" 2 add
attribute @s[scores={stellarity.items.crest.bonus_dmg=3}] generic.attack_damage modifier add 09ba2f70-0cdf-4c47-b2c9-9ccf0ef901fb "stellarity.crest" 3 add
attribute @s[scores={stellarity.items.crest.bonus_dmg=4}] generic.attack_damage modifier add 09ba2f70-0cdf-4c47-b2c9-9ccf0ef901fb "stellarity.crest" 4 add
attribute @s[scores={stellarity.items.crest.bonus_dmg=5}] generic.attack_damage modifier add 09ba2f70-0cdf-4c47-b2c9-9ccf0ef901fb "stellarity.crest" 5 add
attribute @s[scores={stellarity.items.crest.bonus_dmg=6}] generic.attack_damage modifier add 09ba2f70-0cdf-4c47-b2c9-9ccf0ef901fb "stellarity.crest" 6 add
attribute @s[scores={stellarity.items.crest.bonus_dmg=7}] generic.attack_damage modifier add 09ba2f70-0cdf-4c47-b2c9-9ccf0ef901fb "stellarity.crest" 7 add
attribute @s[scores={stellarity.items.crest.bonus_dmg=8}] generic.attack_damage modifier add 09ba2f70-0cdf-4c47-b2c9-9ccf0ef901fb "stellarity.crest" 8 add

title @s[scores={stellarity.items.crest.bonus_dmg=1}] actionbar [{"text":"⬛","color":"#B921E7"},{"text":"⬛⬛⬛⬛⬛⬛⬛","color":"#2C2C2C"}]
title @s[scores={stellarity.items.crest.bonus_dmg=2}] actionbar [{"text":"⬛⬛","color":"#B921E7"},{"text":"⬛⬛⬛⬛⬛⬛","color":"#2C2C2C"}]
title @s[scores={stellarity.items.crest.bonus_dmg=3}] actionbar [{"text":"⬛⬛⬛","color":"#B921E7"},{"text":"⬛⬛⬛⬛⬛","color":"#2C2C2C"}]
title @s[scores={stellarity.items.crest.bonus_dmg=4}] actionbar [{"text":"⬛⬛⬛⬛","color":"#B921E7"},{"text":"⬛⬛⬛⬛","color":"#2C2C2C"}]
title @s[scores={stellarity.items.crest.bonus_dmg=5}] actionbar [{"text":"⬛⬛⬛⬛⬛","color":"#B921E7"},{"text":"⬛⬛⬛","color":"#2C2C2C"}]
title @s[scores={stellarity.items.crest.bonus_dmg=6}] actionbar [{"text":"⬛⬛⬛⬛⬛⬛","color":"#B921E7"},{"text":"⬛⬛","color":"#2C2C2C"}]
title @s[scores={stellarity.items.crest.bonus_dmg=7}] actionbar [{"text":"⬛⬛⬛⬛⬛⬛⬛","color":"#B921E7"},{"text":"⬛","color":"#2C2C2C"}]
title @s[scores={stellarity.items.crest.bonus_dmg=8}] actionbar [{"text":"⬛⬛⬛⬛⬛⬛⬛⬛","color":"#B921E7"}]

playsound minecraft:entity.ender_dragon.flap player @a ~ ~ ~ 0.5 2
playsound minecraft:entity.iron_golem.repair player @a ~ ~ ~ .75 1
