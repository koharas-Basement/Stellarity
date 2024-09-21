#Check if an entity was detected.

execute if score #hit stellarity.misc matches 0 positioned ~-0.05 ~-0.05 ~-0.05 as @e[type=!#kohara:invalid_targets,type=!wolf,type=!cat,tag=!stellarity.raycast,dx=0,sort=nearest] run function stellarity:items/spellbooks/natures_wrath/spirit/raycast/check_hit_entity

#Run a function if a block was successfully detected.

execute unless block ~ ~ ~ #kohara:non_solid run function stellarity:items/spellbooks/natures_wrath/spirit/raycast/hit_block
scoreboard players add #distance stellarity.misc 1

#Advance forward and run the ray again if no entity and/or block was found.

## DEBUG
#particle end_rod ~ ~ ~ 0 0 0 0 1 force

execute if score #hit stellarity.misc matches 0 if score #distance stellarity.misc <= #max_distance stellarity.misc positioned ^ ^ ^0.1 run function stellarity:items/spellbooks/natures_wrath/spirit/raycast/ray
