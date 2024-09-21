
##particle states

# Age
scoreboard players add @s kohara.misc 1
execute if score @s kohara.misc = @s kohara.custom_particle.despawn run kill @s

# Extra animations depending on particle type
function #kohara:particles/extra_loops

#falling particle

#--falling
execute if block ~ ~-0.8 ~ air run tp @s[tag=falling] ~ ~-1 ~
#--falling texture
#execute as @e[type=minecraft:item_display,tag=falling,tag=custom_particle] at @s if block ~ ~-0.8 ~ air run item replace entity @s container.0 with minecraft:redstone 1
#--on ground texture
#execute as @e[type=minecraft:item_display,tag=custom_particle] at @s unless block ~ ~-1 ~ air run item replace entity @s container.0 with minecraft:diamond 1
 

#floating particle
tp @s[tag=floating] ~ ~0.6 ~

#scale particle
scoreboard players remove @s[scores={kohara.custom_particle.display=0..}] kohara.custom_particle.display 1
data merge entity @s[scores={kohara.custom_particle.display=..0}] {transformation:{translation:[0f,-0.3f,0f],left_rotation:[0f,0f,0f,1f],scale:[0.4f,0.4f,0.4f],right_rotation:[0f,0f,0f,1f],}} 
