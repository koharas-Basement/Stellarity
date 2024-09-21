execute if entity @s[tag=stellarity.items.spirit_dagger.cooldown] run function stellarity:items/spirit_dagger/entity_loop
execute if entity @s[tag=stellarity.items.dragonblade.cooldown] run function stellarity:items/dragonblade/cooldown
execute if entity @s[tag=stellarity.items.dragonblade.has_stacks] anchored eyes rotated ~ 0 run function stellarity:items/dragonblade/entity_loop
execute if entity @s[tag=stellarity.natures_wrath.homing_target] run function stellarity:items/spellbooks/natures_wrath/spirit/homing/tick_down

execute if predicate stellarity:utils/clear_of_cooldowns run tag @s remove stellarity.cooldown_tickdown