advancement revoke @s only stellarity:events/super_secret_easter_egg/advancement_grant_everything

title @s times 20 200 20
title @s title {"translate":"stellarity.advancement_grant_everything","fallbak":"Don't use this command","bold":true,"color":"gray"}

tag @s remove stellarity.ender_blessed

effect give @s nausea 10 9 false
effect give @s blindness 10 9 false
effect give @s darkness 10 9 false
effect give @s slowness 10 9 false
effect give @s weakness 10 9 false
effect give @s wither 10 9 false

playsound minecraft:entity.ender_dragon.death master @s ~ ~ ~ 10000 0
playsound minecraft:entity.blaze.death master @s ~ ~ ~ 10000 0
playsound minecraft:entity.ghast.hurt master @s ~ ~ ~ 10000 0
