scoreboard players operation #damage stellarity.misc = @e[type=spectral_arrow,limit=1,sort=nearest] stellarity.misc
scoreboard players set #armor_penetration stellarity.misc 20
scoreboard players set #ignore_iframes stellarity.misc 0

tag @s add stellarity.damage.sharanga_explosion

# Glowing
effect give @s glowing 10 0

tag @e[type=spectral_arrow,limit=1,sort=nearest] add stellarity.damage.attacker

function stellarity:utils/damage/start
