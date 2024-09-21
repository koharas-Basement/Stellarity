scoreboard players set #effect.duration stellarity.misc 160
scoreboard players set #effect.level stellarity.misc 1

execute if entity @s[type=!#kohara:boss,tag=!kohara.boss] run function stellarity:utils/status_effects/voided/apply

execute anchored eyes rotated ~ 0 positioned ^ ^-0.4 ^ run function stellarity:items/call_of_the_void/shrapnel/spawn
