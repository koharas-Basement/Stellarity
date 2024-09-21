scoreboard players set #mainhand stellarity.misc 0
execute if predicate stellarity:items/cursed_tome/holding_mainhand run scoreboard players set #mainhand stellarity.misc 1

scoreboard players set #offhand stellarity.misc 0
execute if predicate stellarity:items/cursed_tome/holding_offhand run scoreboard players set #offhand stellarity.misc 1

execute if score #mainhand stellarity.misc matches 1 run scoreboard players set #offhand stellarity.misc 0
