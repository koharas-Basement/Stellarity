tag @s add stellarity.spirit_dagger.raycast
scoreboard players set #hit stellarity.misc 0
scoreboard players set #distance stellarity.misc 0
scoreboard players set #particles stellarity.misc 0
scoreboard players set #kohara stellarity.misc 0
execute if entity @s[name="kohara_"] run scoreboard players set #kohara stellarity.misc 1
function stellarity:items/spirit_dagger/raycast/ray
tag @s remove stellarity.spirit_dagger.raycast
