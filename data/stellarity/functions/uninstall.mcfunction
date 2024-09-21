scoreboard objectives remove stellarity.config.join_message
scoreboard objectives remove stellarity.config.always_generate_egg
scoreboard objectives remove stellarity.config.dragon_health
scoreboard objectives remove stellarity.items.dragonblade.cooldown
scoreboard objectives remove stellarity.items.dragonblade.stacks
scoreboard objectives remove stellarity.items.dragonblade.until_stack_reset
scoreboard objectives remove stellarity.items.dragonblade.punch_progress
scoreboard objectives remove stellarity.items.dragonblade.until_punch_reset
scoreboard objectives remove stellarity.items.dragonblade.misc_cooldown
scoreboard objectives remove stellarity.items.pandoras_barrel.raycast
scoreboard objectives remove stellarity.items.pandoras_barrel.animation
scoreboard objectives remove stellarity.items.pandoras_barrel.summon_id
scoreboard objectives remove stellarity.items.armors.holy_protection_cooldown
scoreboard objectives remove stellarity.items.armors.ancient_armor.combo
scoreboard objectives remove stellarity.items.armors.ancient_armor.until_combo_reset
scoreboard objectives remove stellarity.items.sharanga.arrow_age
scoreboard objectives remove stellarity.items.clockwork_crossbow.arrow_amount
scoreboard objectives remove stellarity.items.crest.bonus_dmg
scoreboard objectives remove stellarity.items.prismatic_punch.particle_cycle
scoreboard objectives remove stellarity.items.prismatic_punch.marker_age
scoreboard objectives remove stellarity.items.ender_insignia.hold_duration
scoreboard objectives remove stellarity.items.sabrewing.charge
scoreboard objectives remove stellarity.items.sabrewing.until_charge_reset
scoreboard objectives remove stellarity.items.spellbook.conveyance.cooldown
scoreboard objectives remove stellarity.items.spellbook.conveyance.id
scoreboard objectives remove stellarity.items.spellbook.updraft.cooldown
scoreboard objectives remove stellarity.items.spellbook.updraft.animation
scoreboard objectives remove stellarity.items.spellbook.light.cooldown
scoreboard objectives remove stellarity.items.spellbook.natures_wrath.cooldown.shoot
scoreboard objectives remove stellarity.items.spellbook.natures_wrath.cooldown.wolves
scoreboard objectives remove stellarity.items.fish.crystal_heartfish.total_consumed
scoreboard objectives remove stellarity.items.spirit_dagger.attract_cooldown
scoreboard objectives remove stellarity.items.spirit_dagger.consume_time
scoreboard objectives remove stellarity.items.spirit_dagger.until_consume_reset
scoreboard objectives remove stellarity.items.spirit_dagger.effects_duration
scoreboard objectives remove stellarity.items.stella.fire_stacks
scoreboard objectives remove stellarity.items.kaleidoscope.charge
scoreboard objectives remove stellarity.items.kaleidoscope.sec
scoreboard objectives remove stellarity.items.prismatic_pearl.cooldown
scoreboard objectives remove stellarity.items.tamaris.math.health.current
scoreboard objectives remove stellarity.items.tamaris.math.health.max
scoreboard objectives remove stellarity.items.tamaris.math.health.percentage
scoreboard objectives remove stellarity.items.tamaris.animation.progress
scoreboard objectives remove stellarity.items.tamaris.execute_cooldown
scoreboard objectives remove stellarity.items.flask_of_frost.duration
scoreboard objectives remove stellarity.eol.animation
scoreboard objectives remove stellarity.eol.health
scoreboard objectives remove stellarity.eol.hurt_time
scoreboard objectives remove stellarity.eol.attack_cycle
scoreboard objectives remove stellarity.eol.attack_duration
scoreboard objectives remove stellarity.eol.attack_cooldown
scoreboard objectives remove stellarity.eol.projectile_age
scoreboard objectives remove stellarity.phantom.size
scoreboard objectives remove stellarity.mechanics.void_fishing_length
scoreboard objectives remove stellarity.mechanics.crystal_count
scoreboard objectives remove stellarity.mechanics.void_totem_protection_time
scoreboard objectives remove stellarity.mechanics.end_music
scoreboard objectives remove stellarity.misc
scoreboard objectives remove stellarity.misc2
scoreboard objectives remove stellarity.misc.end_portal_animation
scoreboard objectives remove stellarity.misc.end_portal_bg_loop
scoreboard objectives remove stellarity.misc.shot_bow
scoreboard objectives remove stellarity.misc.used_ender_pearl
scoreboard objectives remove stellarity.misc.flight_speed
scoreboard objectives remove stellarity.misc.respawn_detection
scoreboard objectives remove stellarity.misc.time_since_rest 
scoreboard objectives remove stellarity.misc.motion.x1
scoreboard objectives remove stellarity.misc.motion.x2
scoreboard objectives remove stellarity.misc.motion.y1
scoreboard objectives remove stellarity.misc.motion.y2
scoreboard objectives remove stellarity.misc.motion.z1
scoreboard objectives remove stellarity.misc.motion.z2

scoreboard players reset #stellarity.is_installed stellarity.misc

team remove stellarity.purple_glow

bossbar remove stellarity:crystal_count
bossbar remove stellarity:eol

schedule clear stellarity:loops/2_tick
schedule clear stellarity:loops/3_tick
schedule clear stellarity:loops/5_tick
schedule clear stellarity:loops/6_tick
schedule clear stellarity:loops/10_tick
schedule clear stellarity:loops/1_second
schedule clear stellarity:loops/5_second

scoreboard objectives remove stellarity.dot.dark_decay.time
scoreboard objectives remove stellarity.dot.dark_decay.damage
scoreboard objectives remove stellarity.dot.dark_decay.delay
scoreboard objectives remove stellarity.dot.dark_decay.progress
scoreboard objectives remove stellarity.dot.frostburn.time
scoreboard objectives remove stellarity.dot.frostburn.damage
scoreboard objectives remove stellarity.dot.frostburn.delay
scoreboard objectives remove stellarity.dot.frostburn.progress
scoreboard objectives remove stellarity.dot.prismatic_inferno.time
scoreboard objectives remove stellarity.dot.prismatic_inferno.damage
scoreboard objectives remove stellarity.dot.prismatic_inferno.delay
scoreboard objectives remove stellarity.dot.prismatic_inferno.progress

scoreboard objectives remove fe.health
scoreboard objectives remove fe.variable
scoreboard objectives remove fe.count

scoreboard objectives remove fe.timer

bossbar remove fe:ender_dragon
