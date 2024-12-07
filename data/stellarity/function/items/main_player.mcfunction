# Bows
execute if entity @s[scores={kohara.shot_bow=1..}] run function stellarity:items/check_bow

# Dragonblade
execute if entity @s[predicate=stellarity:items/holding/dragonblade,predicate=kohara:player/is_sneaking] as @e[type=!#kohara:invalid_targets,distance=0.001..5,tag=stellarity.items.dragonblade.punch_ready] at @s run function stellarity:items/dragonblade/punch/progress

# Clockwork Crossbow
execute if entity @s[scores={stellarity.items.clockwork_crossbow.time_since_last_shot=1..}] run function stellarity:items/clockwork_crossbow/tickdown
execute if entity @s[predicate=stellarity:items/holding/clockwork_crossbow/unloaded_any] unless score @s stellarity.items.clockwork_crossbow.time_since_last_shot matches 16.. run function stellarity:items/clockwork_crossbow/check

# The Beginning and The End
execute if entity @s[predicate=stellarity:items/holding/spirit_dagger/both,predicate=stellarity:items/spirit_dagger/looking_at_spirit] run function stellarity:items/spirit_dagger/charge/progress
execute if entity @s[scores={stellarity.items.spirit_dagger.until_consume_reset=1..}] run function stellarity:items/spirit_dagger/charge/reset_countdown

# Prismatic Pearl
execute if entity @s[tag=stellarity.prismatic_pearl.holding,scores={kohara.used_ender_pearl=1..}] run function stellarity:items/prismatic_pearl/throw
tag @s[tag=stellarity.prismatic_pearl.holding] remove stellarity.prismatic_pearl.holding
execute if entity @s[predicate=stellarity:items/holding/prismatic_pearl] run tag @s add stellarity.prismatic_pearl.holding

# Ender Insignia
execute if entity @s[predicate=stellarity:items/life_crystal_can_heal] run function stellarity:items/life_crystal/heal
execute if entity @s[tag=stellarity.life_crystal.active,predicate=!stellarity:items/life_crystal_can_heal] run function stellarity:items/life_crystal/stop

# Tamaris
execute if entity @s[predicate=stellarity:items/holding/tamaris] if entity @n[type=!#kohara:invalid_targets,distance=0.01..10,tag=stellarity.items.tamaris.executable] run function stellarity:items/tamaris/holding_loop

# Soaring Insignia
execute if entity @s[predicate=stellarity:items/holding/trinkets/soaring_insignia] run function stellarity:items/soaring_insignia/loop
execute if entity @s[tag=stellarity.insignia.flying,predicate=!stellarity:items/holding/trinkets/soaring_insignia] run function stellarity:items/soaring_insignia/stop_flight

# Kaleidoscope
execute if entity @s[predicate=stellarity:items/holding/kaleidoscope] at @s run function stellarity:items/kaleidoscope/loop

# Book of Updraft
execute if entity @s[tag=stellarity.book_of_updraft.animation] run function stellarity:items/spellbooks/updraft/animation

# Nature's Wrath
# execute if entity @s[scores={stellarity.items.spellbook.natures_wrath.cooldown.shoot=1..}] run function stellarity:items/spellbooks/natures_wrath/cooldown_countdown/shoot

# Prismember
execute if entity @s[predicate=stellarity:items/holding/prismember] run function stellarity:items/prismember/main
execute if score @s stellarity.items.prismember.until_charge_reset matches 1.. run function stellarity:items/prismember/charge/reset_charge_countdown

# Copper Elektra Shield
execute if entity @s[predicate=stellarity:items/holding/trinkets/elektra_shield,scores={stellarity.items.elektra_shield.dashes=0..2}] run function stellarity:items/elektra_shield/recharge_dashes

# Chorus Dagger
execute if entity @s[predicate=stellarity:items/holding/chorus_dagger,predicate=kohara:player/is_sneaking] unless score @s stellarity.items.chorus_dagger.cooldown matches 1.. if entity @e[type=!#kohara:invalid_targets,distance=0.01..8] run function stellarity:items/chorus_dagger/dash

# Frigid Harvester
execute if entity @s[tag=stellarity.cryonics] run function stellarity:items/frigid_harvester/abilities/cryonics/loop

# Starless Scythe
execute if entity @s[predicate=stellarity:items/holding/starless_scythe] run function stellarity:items/starless_scythe/hold/loop
execute if entity @s[tag=stellarity.items.starless_scythe.holding,predicate=!stellarity:items/holding/starless_scythe] run function stellarity:items/starless_scythe/hold/stop

# Spectral Fury
execute if entity @s[scores={stellarity.items.spectral_fury.until_charge_reset=1..}] run function stellarity:items/spectral_fury/charge_reset_countdown

# Stellar Striker
execute if entity @s[predicate=stellarity:items/holding/stellar_striker] run function stellarity:items/stellar_striker/holding/loop
execute if entity @s[tag=stellarity.holding_stellar_striker,predicate=!stellarity:items/holding/stellar_striker] run function stellarity:items/stellar_striker/holding/stop

# Sandstorm Trident
# Note to self: all of these lines can be
# removed once in 1.21.2+ for good as the throwing
# event will be handled through the Mighty Wind enchant
execute if entity @s[tag=stellarity.sandstorm_trident.holding,scores={kohara.thrown_trident=1..}] run function stellarity:items/sandstorm_trident/thrown
tag @s[tag=stellarity.sandstorm_trident.holding] remove stellarity.sandstorm_trident.holding
execute if entity @s[predicate=stellarity:items/holding/sandstorm_trident] run tag @s add stellarity.sandstorm_trident.holding

## Armor sets
# Has to be ticked after everything so
# that Floral Armor effects can work
# as intended
function stellarity:items/armor/main
