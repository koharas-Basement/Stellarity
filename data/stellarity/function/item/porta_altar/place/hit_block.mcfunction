scoreboard players set #hit stellarity.misc 1

scoreboard players set @s stellarity.items.porta_altar.cooldown 30

execute store result storage stellarity:temp porta_altar.y float 1 run data get entity @s Pos[1]
execute positioned ~ ~ ~ run function stellarity:item/porta_altar/place/summon_sigil with storage stellarity:temp porta_altar