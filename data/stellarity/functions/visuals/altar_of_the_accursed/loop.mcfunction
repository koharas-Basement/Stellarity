tp @s ~ ~ ~ ~5 ~

particle smoke ~ ~-0.3 ~ 0 0.3 0 0 1 normal

particle dust_color_transition 0.733 0 1 1.33 0.302 0 0.416 ^ ^-1 ^1 0 0 0 0 1 normal 
particle dust_color_transition 0.733 0 1 1.33 0.302 0 0.416 ^ ^-1 ^-1 0 0 0 0 1 normal 

execute positioned ~ ~-1 ~ if block ~ ~ ~ end_portal_frame[eye=true] run function stellarity:visuals/altar_of_the_accursed/replace_eye

execute if predicate stellarity:utils/chance/33percent run particle enchant ~ ~ ~ 0 0 0 1 1 normal
