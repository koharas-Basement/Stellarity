# Armor sets
function stellarity:items/armors/main

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
execute if entity @s[predicate=stellarity:items/holding/trinkets/ender_insignia] run function stellarity:items/ender_insignia/loop
execute if entity @s[tag=stellarity.ender_insignia.active,predicate=!stellarity:items/holding/trinkets/ender_insignia] run function stellarity:items/ender_insignia/stop

# Tamaris
execute if entity @s[predicate=stellarity:items/holding/tamaris] if entity @e[type=!#kohara:invalid_targets,distance=0.01..10,limit=1,sort=nearest,tag=stellarity.items.tamaris.executable] run function stellarity:items/tamaris/holding_loop

# Soaring Insignia
execute if entity @s[predicate=stellarity:items/holding/trinkets/soaring_insignia] run function stellarity:items/soaring_insignia/loop
execute if entity @s[tag=stellarity.insignia.flying,predicate=!stellarity:items/holding/trinkets/soaring_insignia] run function stellarity:items/soaring_insignia/force_stop

# Kaleidoscope
execute if entity @s[predicate=stellarity:items/holding/kaleidoscope] at @s run function stellarity:items/kaleidoscope/loop
execute if entity @s[scores={stellarity.items.kaleidoscope.charge=1..},predicate=!stellarity:items/holding/kaleidoscope] run function stellarity:items/kaleidoscope/reset_charge

# Book of Updraft
execute if entity @s[tag=stellarity.book_of_updraft.animation] run function stellarity:items/spellbooks/updraft/animation

# Nature's Wrath
execute if entity @s[scores={stellarity.items.spellbook.natures_wrath.cooldown.shoot=1..}] run function stellarity:items/spellbooks/natures_wrath/cooldown_countdown/shoot

# Prismember
execute if entity @s[predicate=stellarity:items/holding/prismember] run function stellarity:items/prismember/main
execute if score @s stellarity.items.prismember.until_charge_reset matches 1.. run function stellarity:items/prismember/charge/reset_charge_countdown

# Copper Elektra Shield
execute if entity @s[predicate=stellarity:items/holding/trinkets/elektra_shield,scores={stellarity.items.elektra_shield.dashes=0..2}] run function stellarity:items/elektra_shield/recharge_dashes
execute if entity @s[tag=stellarity.items.elektra_shield.using] run function stellarity:items/elektra_shield/dash

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
execute if entity @s[predicate=stellarity:items/holding/stellar_striker/sword] run function stellarity:items/stellar_striker/holding/loop
execute if entity @s[tag=stellarity.holding_stellar_striker,predicate=!stellarity:items/holding/stellar_striker/sword] run function stellarity:items/stellar_striker/holding/stop
