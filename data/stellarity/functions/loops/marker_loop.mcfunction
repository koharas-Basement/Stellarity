function stellarity:items/main_marker

# Exit Portal loop
# Used for stuff like respawn checks, etc.
execute if entity @s[tag=fe.exit_portal] run function far_end:structures/exit_portal/main

# Scheduled checks for End Portal animation
execute if entity @s[tag=stellarity.end_portal_animation,tag=stellarity.end_portal_animation.check_schedule] run function stellarity:sfx/end_portal/checks/base

execute if entity @s[tag=stellarity.eol.spawn_animation] run function stellarity:mobs/eol/animations/spawn/loop

execute if entity @s[tag=stellarity.altar_of_the_light] run function stellarity:mechanics/altar_of_light/loop/marker

execute if entity @s[tag=stellarity.end_portal] run function stellarity:sfx/end_portal/marker_loop
execute if entity @s[tag=stellarity.end_portal_animation] run function stellarity:sfx/end_portal/open_animation/main

execute if entity @s[tag=stellarity.spirit_dagger.spirit] run function stellarity:items/spirit_dagger/spirit/loop

# Dragon markers
execute if entity @s[tag=stellarity.dragons_den_chest] run function stellarity:sfx/dragons_den_chest
execute if entity @s[tag=stellarity.dragon_fireball] run function stellarity:mobs/dragon/attacks/fireball/main
execute if entity @s[tag=stellarity.dragon.shulkers] run function stellarity:mobs/dragon/attacks/take_off/shulkers/main

execute if entity @s[tag=stellarity.end_gateway_anim] run function stellarity:sfx/end_gateway_anim/main

execute if entity @s[tag=stellarity.end_city.crystal] run function stellarity:post_gen/end_city/crystal/visuals
execute if entity @s[tag=stellarity.end_city.no_beacon] unless block ~ ~ ~ minecraft:beacon run function stellarity:post_gen/end_city/no_beacon
execute if entity @s[tag=stellarity.end_city.small_tower_crystal] run function stellarity:post_gen/end_city/crystal/small_tower

execute if entity @s[tag=stellarity.stellar_striker] run function stellarity:items/stellar_striker/marker/loop

execute if entity @s[tag=stellarity.shrapnel] run function stellarity:items/call_of_the_void/shrapnel/loop

execute if entity @s[tag=stellarity.waystone] run function stellarity:post_gen/waystone

scoreboard players add @s stellarity.misc.loop.1s 1
execute if entity @s[tag=stellarity.altar_of_accursed] run function stellarity:mechanics/altar_of_accursed/main
execute if entity @s[scores={stellarity.misc.loop.1s=20}] run function stellarity:loops/marker_loop_1s
