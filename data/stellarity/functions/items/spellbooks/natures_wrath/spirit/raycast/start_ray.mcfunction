#Setting up the raycasting data.

tag @s add stellarity.raycast
scoreboard players set #hit stellarity.misc 0
scoreboard players set #distance stellarity.misc 0

# Base lock-on distance: 45 blocks + (upgrades)
scoreboard players set #max_distance stellarity.misc 450
scoreboard players set #extra stellarity.misc 10
scoreboard players operation #extra stellarity.misc *= #upgrades stellarity.misc
scoreboard players operation #max_distance stellarity.misc += #extra stellarity.misc


#Activating the raycast. This function will call itself until it is done.

function stellarity:items/spellbooks/natures_wrath/spirit/raycast/ray

#Raycasting finished, removing tag from the raycaster.

tag @s remove stellarity.raycast
