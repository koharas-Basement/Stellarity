scoreboard players set #min stellarity.misc 100
scoreboard players set #max stellarity.misc 600

scoreboard players set #1s stellarity.misc 20
scoreboard players set #4s stellarity.misc 80
scoreboard players set #5s stellarity.misc 100

scoreboard players operation #lure stellarity.misc = @s stellarity.misc
scoreboard players operation #lure stellarity.misc *= #5s stellarity.misc

scoreboard players operation #max stellarity.misc -= #lure stellarity.misc

execute if entity @s[tag=stellarity.using_fisher] run scoreboard players operation #min stellarity.misc -= #1s stellarity.misc
execute if entity @s[tag=stellarity.using_fisher] run scoreboard players operation #max stellarity.misc -= #4s stellarity.misc

execute store result storage stellarity:temp vfishing.min int 1 run scoreboard players get #min stellarity.misc
execute store result storage stellarity:temp vfishing.max int 1 run scoreboard players get #max stellarity.misc

function stellarity:mechanics/void_fishing/as_aec/roll_time/macro with storage stellarity:temp vfishing
