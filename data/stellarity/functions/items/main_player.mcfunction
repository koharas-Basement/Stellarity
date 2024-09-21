# Armor sets
function stellarity:items/armors/main

# Robust Potato
effect clear @s[tag=stellarity.perm_buffs.cleansing_potato] poison

# Dragonblade
execute if entity @s[predicate=stellarity:items/holding_dragonblade,predicate=kohara:player/is_sneaking] as @e[distance=0.001..5,tag=stellarity.items.dragonblade.punch_ready] at @s run function stellarity:items/dragonblade/punch/progress

# Clockwork Crossbow
execute if entity @s[scores={stellarity.items.clockwork_crossbow.slowdown_time=1..}] run function stellarity:items/clockwork_crossbow/slowdown_tickdown
execute if entity @s[scores={stellarity.items.clockwork_crossbow.cooldown=1..}] run scoreboard players remove @s stellarity.items.clockwork_crossbow.cooldown 1
execute if entity @s[predicate=stellarity:items/clockwork_crossbow/holding_unloaded_any] unless score @s stellarity.items.clockwork_crossbow.cooldown matches 1.. run function stellarity:items/clockwork_crossbow/check

# Prismatic Punch
execute if entity @s[scores={kohara.shot_bow=1},predicate=stellarity:items/holding_sharanga] run function stellarity:items/sharanga/shoot

# Sabrewing
execute if entity @s[scores={kohara.shot_bow=1,stellarity.items.sabrewing.charge=45..},predicate=stellarity:items/holding_sabrewing] run function stellarity:items/sabrewing/shoot
execute if entity @s[scores={stellarity.items.sabrewing.until_charge_reset=1..}] run function stellarity:items/sabrewing/reset_charge_countdown

# Spirit Dagger
execute if entity @s[predicate=stellarity:items/spirit_dagger/holding_both,predicate=stellarity:items/spirit_dagger/looking_at_spirit] run function stellarity:items/spirit_dagger/charge/progress
execute if entity @s[scores={stellarity.items.spirit_dagger.until_consume_reset=1..}] run function stellarity:items/spirit_dagger/charge/reset_countdown

# Crest of The End
execute if entity @s[scores={stellarity.items.crest.time=1..}] run function stellarity:items/crest_of_the_end/countdown

# Prismatic Pearl
execute if entity @s[tag=stellarity.prismatic_pearl.holding,scores={kohara.used_ender_pearl=1..}] run function stellarity:items/prismatic_pearl/throw
tag @s[tag=stellarity.prismatic_pearl.holding] remove stellarity.prismatic_pearl.holding
execute if entity @s[predicate=stellarity:items/holding_prismatic_pearl] run tag @s add stellarity.prismatic_pearl.holding

# Ender Insignia
execute if entity @s[predicate=stellarity:items/trinkets/holding_ender_insignia,predicate=kohara:player/is_sneaking,tag=!stellarity.ender_insignia.active] run tag @s add stellarity.ender_insignia.active
execute if entity @s[tag=stellarity.ender_insignia.active] run function stellarity:items/ender_insignia/loop

# Tamaris
execute if entity @s[predicate=stellarity:items/holding_tamaris] if entity @e[type=!#kohara:invalid_targets,distance=..10,limit=1,sort=nearest,tag=stellarity.items.tamaris.executable] run function stellarity:items/tamaris/holding_loop
execute if entity @s[tag=stellarity.items.tamaris.doing_execute] run function stellarity:items/tamaris/execute/animation/progress

# Soaring Insignia
execute if entity @s[predicate=stellarity:items/trinkets/holding_soaring_insignia] run function stellarity:items/soaring_insignia/loop
execute if entity @s[tag=stellarity.insignia.flying,predicate=!stellarity:items/trinkets/holding_soaring_insignia] run function stellarity:items/soaring_insignia/force_stop

# Kaleidoscope
execute if entity @s[predicate=stellarity:items/holding_kaleidoscope] at @s run function stellarity:items/kaleidoscope/loop
execute if entity @s[predicate=!stellarity:items/holding_kaleidoscope,scores={stellarity.items.kaleidoscope.charge=1..}] run function stellarity:items/kaleidoscope/reset_charge

# Book of Updraft
execute if entity @s[tag=stellarity.book_of_updraft.animation] run function stellarity:items/spellbooks/updraft/animation

# Nature's Wrath
execute if entity @s[scores={stellarity.items.spellbook.natures_wrath.cooldown.shoot=1..}] run function stellarity:items/spellbooks/natures_wrath/cooldown_countdown/shoot

# Prismember
execute if entity @s[predicate=stellarity:items/holding_prismember] run function stellarity:items/prismember/main
execute if score @s stellarity.items.prismember.until_charge_reset matches 1.. run function stellarity:items/prismember/charge/reset_charge_countdown

# Copper Elektra Shield
execute if entity @s[scores={stellarity.items.elektra_shield.cooldown=1..}] run function stellarity:items/elektra_shield/cooldown_countdown
execute if entity @s[tag=stellarity.items.elektra_shield.using] run function stellarity:items/elektra_shield/dash

# Chorus Dagger
execute if entity @s[predicate=stellarity:items/holding_chorus_dagger,predicate=kohara:player/is_sneaking] unless score @s stellarity.items.chorus_dagger.cooldown matches 1.. if entity @e[type=!#kohara:invalid_targets,distance=0.01..8] run function stellarity:items/chorus_dagger/dash
execute if entity @s[scores={stellarity.items.chorus_dagger.cooldown=1..}] run function stellarity:items/chorus_dagger/cooldown_countdown

# Dragon's Eye
execute if entity @s[predicate=stellarity:items/trinkets/holding_dragons_eye] run function stellarity:items/dragons_eye/main
execute if entity @s[tag=stellarity.items.dragons_eye.holding,predicate=!stellarity:items/trinkets/holding_dragons_eye] run function stellarity:items/dragons_eye/remove_from_team
