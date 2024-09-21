scoreboard objectives remove stellarity.config.join_message
scoreboard objectives remove stellarity.config.always_generate_egg
scoreboard objectives remove stellarity.config.dragon_health

scoreboard objectives remove stellarity.items.dragonblade.cooldown
scoreboard objectives remove stellarity.items.dragonblade.stacks
scoreboard objectives remove stellarity.items.dragonblade.until_stack_reset
scoreboard objectives remove stellarity.items.dragonblade.punch_progress
scoreboard objectives remove stellarity.items.dragonblade.until_punch_reset

scoreboard objectives remove stellarity.misc
scoreboard objectives remove stellarity.items.pandoras_barrel.animation
scoreboard objectives remove stellarity.items.pandoras_barrel.summon_id

scoreboard objectives remove stellarity.items.armors.holy_protection_cooldown
scoreboard objectives remove stellarity.items.armors.chorus_champion_armor.combo
scoreboard objectives remove stellarity.items.armors.chorus_champion_armor.until_combo_reset

scoreboard objectives remove stellarity.items.clockwork_crossbow.slowdown_time
scoreboard objectives remove stellarity.items.clockwork_crossbow.cooldown
scoreboard objectives remove stellarity.items.clockwork_crossbow.should_save

scoreboard objectives remove stellarity.items.crest.bonus_dmg
scoreboard objectives remove stellarity.items.crest.time

scoreboard objectives remove stellarity.items.elektra_shield.cooldown
scoreboard objectives remove stellarity.items.elektra_shield.animation
scoreboard objectives remove stellarity.items.elektra_shield.dashes

scoreboard objectives remove stellarity.items.prismatic_punch.particle_cycle
scoreboard objectives remove stellarity.items.prismatic_punch.teleport
scoreboard objectives remove stellarity.items.prismatic_punch.piercing
scoreboard objectives remove stellarity.items.prismatic_punch.piercing_cooldown
scoreboard objectives remove stellarity.items.prismatic_punch.multishot

scoreboard objectives remove stellarity.items.ender_insignia.hold_duration

scoreboard objectives remove stellarity.items.spellbook.conveyance.cooldown
scoreboard objectives remove stellarity.items.spellbook.conveyance.id
scoreboard objectives remove stellarity.items.spellbook.updraft.cooldown
scoreboard objectives remove stellarity.items.spellbook.updraft.animation
scoreboard objectives remove stellarity.items.spellbook.light.cooldown
scoreboard objectives remove stellarity.items.spellbook.natures_wrath.cooldown.shoot
scoreboard objectives remove stellarity.items.spellbook.natures_wrath.cooldown.wolves
scoreboard objectives remove stellarity.items.spellbook.natures_wrath.homing_time

scoreboard objectives remove stellarity.items.fish.crystal_heartfish.total_consumed

scoreboard objectives remove stellarity.items.spirit_dagger.attract_cooldown
scoreboard objectives remove stellarity.items.spirit_dagger.consume_time
scoreboard objectives remove stellarity.items.spirit_dagger.until_consume_reset
scoreboard objectives remove stellarity.items.spirit_dagger.effects_duration

# Frigid Harvester, AKA Aery Sword
scoreboard objectives remove stellarity.items.aery_sword.damage

scoreboard objectives remove stellarity.items.aery_sword.kills.iron_golem
scoreboard objectives remove stellarity.items.aery_sword.kills.ender_dragon
scoreboard objectives remove stellarity.items.aery_sword.kills.witch
scoreboard objectives remove stellarity.items.aery_sword.kills.blaze
scoreboard objectives remove stellarity.items.aery_sword.kills.stray
scoreboard objectives remove stellarity.items.aery_sword.kills.wither

scoreboard objectives remove stellarity.items.aery_sword.kills.witch.count
scoreboard objectives remove stellarity.items.aery_sword.kills.blaze.count
scoreboard objectives remove stellarity.items.aery_sword.kills.stray.count

scoreboard objectives remove stellarity.items.aery_sword.cryonics.duration
scoreboard objectives remove stellarity.items.aery_sword.cryonics.cooldown

scoreboard objectives remove stellarity.items.kaleidoscope.charge

scoreboard objectives remove stellarity.items.prismatic_pearl.cooldown

scoreboard objectives remove stellarity.items.prismember.charge
scoreboard objectives remove stellarity.items.prismember.until_charge_reset
scoreboard objectives remove stellarity.items.prismember.cooldown

scoreboard objectives remove stellarity.items.tamaris.math.health.current
scoreboard objectives remove stellarity.items.tamaris.math.health.max
scoreboard objectives remove stellarity.items.tamaris.math.health.percentage
scoreboard objectives remove stellarity.items.tamaris.animation.progress
scoreboard objectives remove stellarity.items.tamaris.execute_cooldown

scoreboard objectives remove stellarity.items.chorus_dagger.cooldown

## Mobs
# Empress of Light
scoreboard objectives remove stellarity.eol.animation
scoreboard objectives remove stellarity.eol.health
scoreboard objectives remove stellarity.eol.hurt_time
scoreboard objectives remove stellarity.eol.attack_cycle
scoreboard objectives remove stellarity.eol.attack_duration
scoreboard objectives remove stellarity.eol.attack_cooldown
scoreboard objectives remove stellarity.eol.projectile_age

# Ender Dragon
scoreboard objectives remove stellarity.dragon.perch_cooldown
scoreboard objectives remove stellarity.dragon.health_percent
scoreboard objectives remove stellarity.dragon.health_old
scoreboard objectives remove stellarity.dragon.time_chainfiring
scoreboard objectives remove stellarity.dragon.shulker_hell
scoreboard objectives remove stellarity.dragon.heartbeat

# Phantoms
scoreboard objectives remove stellarity.phantom.size

## Mechanics
scoreboard objectives remove stellarity.mechanics.void_fishing.length
scoreboard objectives remove stellarity.mechanics.void_fishing.max_time
scoreboard objectives remove stellarity.mechanics.void_fishing.can_fish
scoreboard objectives remove stellarity.mechanics.consecration.time
scoreboard objectives remove stellarity.mechanics.altar_of_the_sacred.timer

## Boss music
scoreboard objectives remove stellarity.music.ender_dragon.timer
scoreboard objectives remove stellarity.music.ender_dragon.duration

scoreboard objectives remove stellarity.music.empress_of_light.timer
scoreboard objectives remove stellarity.music.ender_dragon.duration


## Misc
# Temporar variables OR things that don't need its own variable
scoreboard objectives remove stellarity.misc
scoreboard objectives remove stellarity.misc2
scoreboard objectives remove stellarity.misc3
scoreboard objectives remove stellarity.misc.end_portal_animation
scoreboard objectives remove stellarity.misc.end_portal_bg_loop

scoreboard objectives remove stellarity.misc.motion.x1
scoreboard objectives remove stellarity.misc.motion.x2
scoreboard objectives remove stellarity.misc.motion.y1
scoreboard objectives remove stellarity.misc.motion.y2
scoreboard objectives remove stellarity.misc.motion.z1
scoreboard objectives remove stellarity.misc.motion.z2

scoreboard objectives remove stellarity.misc.loop.2t
scoreboard objectives remove stellarity.misc.loop.3t
scoreboard objectives remove stellarity.misc.loop.5t
scoreboard objectives remove stellarity.misc.loop.1s
scoreboard objectives remove stellarity.misc.loop.10s
scoreboard objectives remove stellarity.misc.loop.15s

## Creating teams
team remove stellarity.purple_glow
team remove stellarity.golden_glow
team remove stellarity.spirit_glow
team remove stellarity.homing_targets
team remove stellarity.rave_glow
team remove stellarity.phantom_glow
team remove stellarity.eol.night_glow
team remove stellarity.eol.day_glow
team remove stellarity.dragons_eye.pacified

bossbar remove stellarity:crystal_count
bossbar remove stellarity:eol
bossbar remove fe:dragon

# Scheduling loops that do not need
# to be executed every single tick
schedule clear stellarity:loops/timed/2_tick
schedule clear stellarity:loops/timed/3_tick
schedule clear stellarity:loops/timed/5_tick
schedule clear stellarity:loops/timed/1_second
schedule clear stellarity:loops/timed/5_second

# Get world difficulty
execute store result score #difficulty stellarity.misc run difficulty
