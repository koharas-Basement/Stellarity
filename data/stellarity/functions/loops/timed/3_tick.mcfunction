execute as @e[type=!#kohara:invalid_targets,tag=stellarity.items.spirit_dagger.cooldown] at @s run function stellarity:items/spirit_dagger/entity_loop
execute as @e[type=!#kohara:invalid_targets,tag=stellarity.items.dragonblade.cooldown] at @s run function stellarity:items/dragonblade/cooldown
execute as @e[type=!#kohara:invalid_targets,tag=stellarity.items.dragonblade.has_stacks] at @s anchored eyes rotated ~ 0 run function stellarity:items/dragonblade/entity_loop
execute as @e[type=!#kohara:invalid_targets,tag=stellarity.natures_wrath.homing_target] at @s run function stellarity:items/spellbooks/natures_wrath/spirit/homing/tick_down

# Starstruck Carcanet
execute as @e[type=area_effect_cloud,tag=stellarity.carcanet.aec] at @s run function stellarity:items/starstruck_carcanet/aec_loop

schedule function stellarity:loops/timed/3_tick 3t
