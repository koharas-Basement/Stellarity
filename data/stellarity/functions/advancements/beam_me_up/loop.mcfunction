execute if entity @e[type=minecraft:ender_pearl,tag=stellarity.pearl_advancement,distance=100..] run advancement grant @s only stellarity:adventure/beam_me_up
execute unless entity @e[type=minecraft:ender_pearl,tag=stellarity.pearl_advancement] run tag @s remove stellarity.pearl_advancement_pending
