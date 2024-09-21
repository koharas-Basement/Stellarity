scoreboard players add @s stellarity.misc 1

particle dust 0.353 0.525 0.769 1 ~ ~.4 ~ 0.3 0.3 0.3 0 2 normal
particle soul_fire_flame ~ ~.4 ~ 0.3 0.3 0.3 0 1 normal

execute if score @s stellarity.misc matches 400.. run function stellarity:items/spellbooks/natures_wrath/wolves/despawn
