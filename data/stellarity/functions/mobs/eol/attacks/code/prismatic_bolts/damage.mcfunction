execute store result score #difficulty stellarity.misc run difficulty

execute unless predicate stellarity:mobs/eol/is_daytime if score #difficulty stellarity.misc matches 1 run scoreboard players set #damage stellarity.misc 100
execute unless predicate stellarity:mobs/eol/is_daytime if score #difficulty stellarity.misc matches 2 run scoreboard players set #damage stellarity.misc 120
execute unless predicate stellarity:mobs/eol/is_daytime if score #difficulty stellarity.misc matches 3 run scoreboard players set #damage stellarity.misc 140

execute if predicate stellarity:mobs/eol/is_daytime if score #difficulty stellarity.misc matches 1 run scoreboard players set #damage stellarity.misc 120
execute if predicate stellarity:mobs/eol/is_daytime if score #difficulty stellarity.misc matches 2 run scoreboard players set #damage stellarity.misc 140
execute if predicate stellarity:mobs/eol/is_daytime if score #difficulty stellarity.misc matches 3 run scoreboard players set #damage stellarity.misc 160

scoreboard players set #armor_penetration stellarity.misc 0
scoreboard players set #ignore_iframes stellarity.misc 0

tag @s add stellarity.damage.eol.prismatic_bolts
tag @e[type=marker,limit=1,sort=nearest] add stellarity.damage.attacker

function stellarity:utils/damage/start
