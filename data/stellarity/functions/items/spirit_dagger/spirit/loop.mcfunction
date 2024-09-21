# Age
scoreboard players add @s stellarity.misc 2
execute if score @s stellarity.misc matches 10 run tag @s add stellarity.spirit_dagger.spirit_ready
execute if score @s stellarity.misc matches 301.. run function stellarity:items/spirit_dagger/spirit/timeout

# Particles
execute run particle soul_fire_flame ^ ^ ^ .25 .25 .25 0 2 normal
