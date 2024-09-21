# Pixie sounds, particles, etc.
execute as @e[type=vex,tag=stellarity.pixie] at @s run function stellarity:mobs/pixie/loop

execute as @a[predicate=stellarity:items/wearing_full_ancient_armor,predicate=stellarity:utils/player/is_running,predicate=!stellarity:utils/player/is_swimming] at @s rotated as @s rotated ~ 0 positioned ^ ^ ^-.33 run function stellarity:items/armors/ancient_armor/visuals
execute as @a[tag=stellarity.holy_protection] at @s rotated as @s rotated ~ 0 positioned ^ ^ ^-.33 run function stellarity:items/armors/hallowed_armor/visuals

## Item loops
# Spirit Dagger
execute as @e[type=!#stellarity:invalid_targets,scores={stellarity.items.spirit_dagger.attract_cooldown=1..}] at @s run function stellarity:items/spirit_dagger/entity_loop
execute as @e[type=armor_stand,tag=stellarity.spirit_dagger.spirit] at @s anchored eyes positioned ^ ^ ^ run function stellarity:items/spirit_dagger/spirit/loop
execute as @a[scores={stellarity.items.spirit_dagger.effects_duration=1..}] run function stellarity:items/spirit_dagger/effects/reset/tick
# Dragonblade
execute as @e[type=!#stellarity:invalid_targets,scores={stellarity.items.dragonblade.cooldown=1..}] at @s run function stellarity:items/dragonblade/cooldown
execute as @e[type=!#stellarity:invalid_targets,scores={stellarity.items.dragonblade.stacks=1..}] at @s run function stellarity:items/dragonblade/entity_loop
# Starstruck Carcanet
execute as @e[type=area_effect_cloud,tag=stellarity.carcanet.aec] at @s run function stellarity:items/starstruck_carcanet/aec_loop
# Prismatic Pearl
execute as @a[scores={stellarity.items.prismatic_pearl.cooldown=1..}] run function stellarity:items/prismatic_pearl/cooldown/countdown
# Tamaris
execute as @e[type=!#stellarity:invalid_targets,tag=stellarity.items.tamaris.executable] at @s anchored eyes rotated ~ 0 positioned ^ ^1.5 ^ run function stellarity:items/tamaris/execute/indicator
execute as @e[type=!#stellarity:invalid_targets,scores={stellarity.items.tamaris.execute_cooldown=1..}] run function stellarity:items/tamaris/execute/cooldown_countdown
# Spellbooks
execute as @a[scores={stellarity.items.spellbook.conveyance.cooldown=1..}] run function stellarity:items/spellbooks/conveyance/cooldown_countdown
execute as @a[scores={stellarity.items.spellbook.updraft.cooldown=1..}] run function stellarity:items/spellbooks/updraft/cooldown_countdown
execute as @a[scores={stellarity.items.spellbook.light.cooldown=1..}] run function stellarity:items/spellbooks/light/cooldown_countdown
execute as @a[scores={stellarity.items.spellbook.natures_wrath.cooldown.shoot=1..}] run function stellarity:items/spellbooks/natures_wrath/cooldown_countdown/shoot
execute as @a[scores={stellarity.items.spellbook.natures_wrath.cooldown.wolves=1..}] run function stellarity:items/spellbooks/natures_wrath/cooldown_countdown/wolves

schedule function stellarity:loops/2_tick 2t
