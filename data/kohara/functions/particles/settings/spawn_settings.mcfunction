##Spawn settings


$data merge entity @s {Tags:["kohara.custom_particle","kohara.particle.$(id)",$(state)],billboard:"$(billboard)",item:{id:"minecraft:$(item)",Count:1b,tag:{CustomModelData:$(custommodeldata)}},transformation:{translation:[0f,-0.3f,0f],left_rotation:[0f,0f,0f,1f],scale:[0f,0f,0f],right_rotation:[0f,0f,0f,1f]}}

#execute store result score @s[tag=!spawned,tag=!falling,tag=!floating] kohara.custom_particle.spread.pos run data get entity @s Pos[1] 1

$data merge entity @s[tag=!spawned] {teleport_duration:$(speed)}

$scoreboard players set @s[tag=!spawned] kohara.custom_particle.despawn $(despawn_value)

# Better spread implementation
# Definitely less efficient in terms of performance, but it allows for both XZ and Y spread
execute store result score #rotation1 kohara.misc run random value 0..360
execute store result score #rotation2 kohara.misc run random value -45..45
execute store result storage kohara:temp particles.rotation1 int 1 run scoreboard players get #rotation1 kohara.misc
execute store result storage kohara:temp particles.rotation2 int 1 run scoreboard players get #rotation2 kohara.misc

# To enlarged int and back into the storage
$data modify storage kohara:temp particles.spread.min set value $(spread_initial)d
$data modify storage kohara:temp particles.spread.max set value $(spread_radius)d
execute store result score #spread.min kohara.misc run data get storage kohara:temp particles.spread.min 100000
execute store result score #spread.max kohara.misc run data get storage kohara:temp particles.spread.max 100000
execute store result storage kohara:temp particles.spread.min int 1 run scoreboard players get #spread.min kohara.misc
execute store result storage kohara:temp particles.spread.max int 1 run scoreboard players get #spread.max kohara.misc

function kohara:particles/settings/roll with storage kohara:temp particles.spread
function kohara:particles/settings/rotate_teleport with storage kohara:temp particles

scoreboard players set @s[tag=!spread,tag=!spawned] kohara.custom_particle.display 0
scoreboard players set @s[tag=spread,tag=!spawned] kohara.custom_particle.display 5

tag @s add spawned

#execute store result entity @s[tag=spawned,tag=!falling,tag=!floating] Pos[1] double 1 run scoreboard players get @s kohara.custom_particle.spread.pos
scoreboard players set @s[tag=falling] kohara.custom_particle.spread.pos 0

function #kohara:particles/post_spawn
