particle block snow_block ~ ~ ~ 0 0 0 1 8 normal
particle block ice ~ ~ ~ 0 0 0 1 7 normal

playsound minecraft:block.snow.break neutral @a[distance=0..] ~ ~ ~ 1 0.9
playsound minecraft:block.glass.break neutral @a[distance=0..] ~ ~ ~ 1 0.8

scoreboard players set #dot.time stellarity.misc 40

scoreboard players set #add stellarity.misc 7
scoreboard players operation #add stellarity.misc *= @s stellarity.misc2
scoreboard players operation #dot.time stellarity.misc += #add stellarity.misc

function stellarity:items/spellbooks/natures_wrath/spirit/damage/effects/as_marker/all
