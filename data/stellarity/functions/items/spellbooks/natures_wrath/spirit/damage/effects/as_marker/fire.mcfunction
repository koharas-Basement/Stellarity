particle lava ~ ~ ~ 0 0 0 0 6 normal
particle smoke ~ ~ ~ 0 0 0 0.1 12 normal

scoreboard players set #fire stellarity.misc 41
scoreboard players set #add stellarity.misc 10
scoreboard players operation #add stellarity.misc *= @s stellarity.misc2
scoreboard players operation #fire stellarity.misc += #add stellarity.misc

function stellarity:items/spellbooks/natures_wrath/spirit/damage/effects/as_marker/all
