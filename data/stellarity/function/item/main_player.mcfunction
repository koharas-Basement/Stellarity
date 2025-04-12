# Bows
execute if entity @s[scores={kohara.shot_bow=3}] run function stellarity:item/check_bow

# Dragonblade
execute if entity @s[predicate=stellarity:item/holding/dragonblade,predicate=kohara:player/is_sneaking] as @e[type=!#kohara:invalid_targets,distance=0.001..5,tag=stellarity.items.dragonblade.punch_ready] at @s run function stellarity:item/dragonblade/punch/progress

# Clockwork Crossbow
execute if entity @s[scores={stellarity.items.clockwork_crossbow.time_since_last_shot=1..}] run function stellarity:item/clockwork_crossbow/tickdown
execute if entity @s[predicate=stellarity:item/holding/clockwork_crossbow/unloaded_any] unless score @s stellarity.items.clockwork_crossbow.time_since_last_shot matches 16.. run function stellarity:item/clockwork_crossbow/check

# The Beginning and The End
execute if entity @s[predicate=stellarity:item/holding/spirit_dagger/both,predicate=stellarity:item/spirit_dagger/looking_at_spirit] run function stellarity:item/spirit_dagger/charge/progress
execute if entity @s[scores={stellarity.items.spirit_dagger.until_consume_reset=1..}] run function stellarity:item/spirit_dagger/charge/reset_countdown

# Ender Insignia
execute if entity @s[predicate=stellarity:item/life_crystal_can_heal] run function stellarity:item/life_crystal/heal
execute if entity @s[tag=stellarity.life_crystal.active,predicate=!stellarity:item/life_crystal_can_heal] run function stellarity:item/life_crystal/stop

# Tamaris
execute if entity @s[predicate=stellarity:item/holding/tamaris] if entity @n[type=!#kohara:invalid_targets,distance=0.01..10,tag=stellarity.items.tamaris.executable] run function stellarity:item/tamaris/holding_loop

# Soaring Insignia
execute if entity @s[predicate=stellarity:item/holding/trinket/soaring_insignia] run function stellarity:item/soaring_insignia/loop
execute if entity @s[tag=stellarity.insignia.flying,predicate=!stellarity:item/holding/trinket/soaring_insignia] run function stellarity:item/soaring_insignia/stop_flight

# Kaleidoscope
execute if entity @s[predicate=stellarity:item/holding/kaleidoscope] run function stellarity:item/kaleidoscope/loop

# Book of Updraft
execute if entity @s[tag=stellarity.book_of_updraft.animation] run function stellarity:item/spellbooks/updraft/animation

# Prismember
execute if entity @s[predicate=stellarity:item/holding/prismember] run function stellarity:item/prismember/main
execute if score @s stellarity.items.prismember.until_charge_reset matches 1.. run function stellarity:item/prismember/charge/reset_charge_countdown

# Copper Elektra Shield
execute if entity @s[predicate=stellarity:item/holding/trinket/elektra_shield,scores={stellarity.items.elektra_shield.dashes=0..2}] run function stellarity:item/elektra_shield/recharge_dashes

# Chorus Dagger
execute if entity @s[predicate=stellarity:item/holding/chorus_dagger,predicate=kohara:player/is_sneaking] unless score @s stellarity.items.chorus_dagger.cooldown matches 1.. if entity @e[type=!#kohara:invalid_targets,distance=0.01..8] run function stellarity:item/chorus_dagger/dash

# Harvester
execute if entity @s[tag=stellarity.cryonics] run function stellarity:item/harvester/abilities/cryonics/loop

# Starless Scythe
execute if entity @s[predicate=stellarity:item/holding/starless_scythe] run function stellarity:item/starless_scythe/hold/loop
execute if entity @s[tag=stellarity.items.starless_scythe.holding,predicate=!stellarity:item/holding/starless_scythe] run function stellarity:item/starless_scythe/hold/stop

# Spectral Fury
execute if entity @s[scores={stellarity.items.spectral_fury.until_charge_reset=1..}] run function stellarity:item/spectral_fury/charge_reset_countdown

# Stellar Striker
execute if entity @s[predicate=stellarity:item/holding/stellar_striker] run function stellarity:item/stellar_striker/holding/loop
execute if entity @s[tag=stellarity.holding_stellar_striker,predicate=!stellarity:item/holding/stellar_striker] run function stellarity:item/stellar_striker/holding/stop

## Armor sets
# Has to be ticked after everything so
# that Floral Armor effects can work
# as intended
function stellarity:item/armor/main
