scoreboard players set #gloop stellarity.misc 0
execute if predicate kohara:chance/10percent run scoreboard players set #gloop stellarity.misc 1

execute if score #gloop stellarity.misc matches 1 run function stellarity:items/pandoras_barrel/summons/swamp/gloop


execute if score #gloop stellarity.misc matches 0 if predicate stellarity:locations/above_4_light_level run function stellarity:items/pandoras_barrel/summons/swamp/light
execute if score #gloop stellarity.misc matches 0 unless predicate stellarity:locations/above_4_light_level run function stellarity:items/pandoras_barrel/summons/swamp/dark
