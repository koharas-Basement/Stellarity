tag @s add stellarity.end_portal_animation.raycast
scoreboard players set #hit stellarity.misc 0
scoreboard players set #distance stellarity.misc 0
function stellarity:visuals/end_portal_animation/raycast/ray
tag @s remove stellarity.end_portal_animation.raycast
