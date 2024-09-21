scoreboard players add #sariel.spawn_count stellarity.misc 1

execute if predicate stellarity:utils/chance/18percent run function stellarity:items/sariel/orb_summon_cmd

execute if score #sariel.spawn_count stellarity.misc matches ..1 run function stellarity:items/sariel/orb_spawn
