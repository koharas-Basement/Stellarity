## Scoreboards creation
# Configuration
scoreboard objectives remove stellarity.config.join_message
scoreboard objectives remove stellarity.config.always_generate_egg
scoreboard objectives remove stellarity.config.enable_end_crystal_drop
scoreboard objectives remove stellarity.config.dragon_health
scoreboard objectives remove stellarity.config.eol_health
scoreboard objectives remove stellarity.config.allow_disenchanting
scoreboard objectives remove stellarity.config.track_loop_delay.eol
scoreboard objectives remove stellarity.config.track_loop_delay.dragon
scoreboard objectives remove stellarity.config.enable_dragon_screenshake
scoreboard objectives remove stellarity.config.enable_creative_shock
scoreboard objectives remove stellarity.config.nerf_elytra
scoreboard objectives remove stellarity.config.boss_status_messages

# Initialize config scoreboards
# Freshly created scoreboards have no value (not even set to 0)
function stellarity:config/init

## Items
# Dragonblade
scoreboard objectives remove stellarity.items.dragonblade.cooldown
scoreboard objectives remove stellarity.items.dragonblade.stacks
scoreboard objectives remove stellarity.items.dragonblade.stack_cooldown
scoreboard objectives remove stellarity.items.dragonblade.until_stack_reset
scoreboard objectives remove stellarity.items.dragonblade.punch_progress
scoreboard objectives remove stellarity.items.dragonblade.until_punch_reset
# Armor sets
scoreboard objectives remove stellarity.items.armors.holy_protection_cooldown
scoreboard objectives remove stellarity.items.armors.champion_armor.combo
scoreboard objectives remove stellarity.items.armors.champion_armor.until_combo_reset

# Clockwork Crossbow
scoreboard objectives remove stellarity.items.clockwork_crossbow.time_since_last_shot
scoreboard objectives remove stellarity.items.clockwork_crossbow.should_save

# Crest of The End
scoreboard objectives remove stellarity.items.crest.bonus_dmg
scoreboard objectives remove stellarity.items.crest.time

# Copper Elektra Shield
scoreboard objectives remove stellarity.items.elektra_shield.cooldown
scoreboard objectives remove stellarity.items.elektra_shield.animation
scoreboard objectives remove stellarity.items.elektra_shield.dashes
scoreboard objectives remove stellarity.items.elektra_shield.zap_count
scoreboard objectives remove stellarity.items.elektra_shield.boost_duration

# Prismatic Punch
scoreboard objectives remove stellarity.items.prismatic_punch.particle_cycle
scoreboard objectives remove stellarity.items.prismatic_punch.teleport
scoreboard objectives remove stellarity.items.prismatic_punch.piercing
scoreboard objectives remove stellarity.items.prismatic_punch.piercing_cooldown
scoreboard objectives remove stellarity.items.prismatic_punch.multishot

# Ender Insignia
scoreboard objectives remove stellarity.items.life_crystal.heal_amount

# Spellbooks
scoreboard objectives remove stellarity.items.spellbook.conveyance.cooldown
scoreboard objectives remove stellarity.items.spellbook.conveyance.id
scoreboard objectives remove stellarity.items.spellbook.updraft.cooldown
scoreboard objectives remove stellarity.items.spellbook.updraft.animation
scoreboard objectives remove stellarity.items.spellbook.light.cooldown
scoreboard objectives remove stellarity.items.spellbook.jinx.cooldown
scoreboard objectives remove stellarity.items.spellbook.return.cooldown
scoreboard objectives remove stellarity.items.spellbook.return.progress
scoreboard objectives remove stellarity.items.spellbook.give_back.hand

# Empress Wings
scoreboard objectives remove stellarity.items.empress_wings.particles

# Fish
# yeah, only 1
scoreboard objectives remove stellarity.items.fish.crystal_heartfish.total_consumed

# The Beginning and The End
scoreboard objectives remove stellarity.items.spirit_dagger.attract_cooldown
scoreboard objectives remove stellarity.items.spirit_dagger.consume_time
scoreboard objectives remove stellarity.items.spirit_dagger.until_consume_reset
scoreboard objectives remove stellarity.items.spirit_dagger.effects_duration

# Harvester, AKA Aery Sword
scoreboard objectives remove stellarity.items.aery_sword.damage
scoreboard objectives remove stellarity.items.aery_sword.kills.iron_golem
scoreboard objectives remove stellarity.items.aery_sword.kills.ender_dragon
scoreboard objectives remove stellarity.items.aery_sword.kills.witch
scoreboard objectives remove stellarity.items.aery_sword.kills.blaze
scoreboard objectives remove stellarity.items.aery_sword.kills.stray
scoreboard objectives remove stellarity.items.aery_sword.kills.wither
scoreboard objectives remove stellarity.items.aery_sword.kills.warden
scoreboard objectives remove stellarity.items.aery_sword.kills.wither_skeleton
scoreboard objectives remove stellarity.items.aery_sword.kills.witch.count
scoreboard objectives remove stellarity.items.aery_sword.kills.blaze.count
scoreboard objectives remove stellarity.items.aery_sword.kills.stray.count
scoreboard objectives remove stellarity.items.aery_sword.kills.wither_skeleton.count
scoreboard objectives remove stellarity.items.aery_sword.cryonics.duration
scoreboard objectives remove stellarity.items.aery_sword.cryonics.cooldown

# Kaleidoscope
scoreboard objectives remove stellarity.items.kaleidoscope.charge
scoreboard objectives remove stellarity.items.kaleidoscope.charge_progress

# Prismatic Pearl
scoreboard objectives remove stellarity.items.prismatic_pearl.cooldown

# Prismember
scoreboard objectives remove stellarity.items.prismember.charge
scoreboard objectives remove stellarity.items.prismember.until_charge_reset
scoreboard objectives remove stellarity.items.prismember.cooldown

# Tamaris
scoreboard objectives remove stellarity.items.tamaris.math.health.current
scoreboard objectives remove stellarity.items.tamaris.math.health.max
scoreboard objectives remove stellarity.items.tamaris.math.health.percentage
scoreboard objectives remove stellarity.items.tamaris.animation.progress
scoreboard objectives remove stellarity.items.tamaris.execute_cooldown

# Chorus Dagger
scoreboard objectives remove stellarity.items.chorus_dagger.cooldown

# Starless Scythe
scoreboard objectives remove stellarity.items.starless_scythe.time_since_attack

# Stellar Striker
scoreboard objectives remove stellarity.items.stellar_striker.stars.collect_time
scoreboard objectives remove stellarity.items.stellar_striker.stars.amount
scoreboard objectives remove stellarity.items.stellar_striker.time_since_attack
scoreboard objectives remove stellarity.items.stellar_striker.cooldown

# Spectral Fury
scoreboard objectives remove stellarity.items.spectral_fury.charge
scoreboard objectives remove stellarity.items.spectral_fury.until_charge_reset
scoreboard objectives remove stellarity.items.spectral_fury.pierce_count
scoreboard objectives remove stellarity.items.spectral_fury.damage

## Mobs
# Empress of Light
scoreboard objectives remove stellarity.eol.animation
scoreboard objectives remove stellarity.eol.health
scoreboard objectives remove stellarity.eol.health_percent
scoreboard objectives remove stellarity.eol.hurt_time
scoreboard objectives remove stellarity.eol.attack_cycle
scoreboard objectives remove stellarity.eol.attack_duration
scoreboard objectives remove stellarity.eol.attack_cooldown
scoreboard objectives remove stellarity.eol.projectile_age

# Ender Dragon
scoreboard objectives remove stellarity.dragon.times_killed
scoreboard objectives remove stellarity.dragon.screenshake
scoreboard objectives remove stellarity.dragon.respawn_animation_progress
scoreboard objectives remove stellarity.dragon.perch_cooldown
scoreboard objectives remove stellarity.dragon.health
scoreboard objectives remove stellarity.dragon.health_percent
scoreboard objectives remove stellarity.dragon.health_old
scoreboard objectives remove stellarity.dragon.time_chainfiring
scoreboard objectives remove stellarity.dragon.shulker_hell
scoreboard objectives remove stellarity.dragon.heartbeat
scoreboard objectives remove stellarity.dragon.ball_of_blight_cooldown

# Phantoms
scoreboard objectives remove stellarity.phantom.size
scoreboard objectives remove stellarity.phantom.wings_drop_chance

## Boss music
scoreboard objectives remove stellarity.music.ender_dragon.timer
scoreboard objectives remove stellarity.music.empress_of_light.timer

## Mechanics
scoreboard objectives remove stellarity.mechanics.void_fishing.length
scoreboard objectives remove stellarity.mechanics.void_fishing.max_time
scoreboard objectives remove stellarity.mechanics.void_fishing.can_fish
scoreboard objectives remove stellarity.mechanics.consecration.time
scoreboard objectives remove stellarity.mechanics.altar_of_the_sacred.timer

## Misc
# Temporar variables OR things that don't need its own variable
scoreboard objectives remove stellarity.misc
scoreboard objectives remove stellarity.misc2
scoreboard objectives remove stellarity.misc3
scoreboard objectives remove stellarity.misc4
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
team remove stellarity.dragon.pacify_others

## Bossbars
# Ender Dragon
bossbar remove stellarity:ender_dragon 
# 'Crystals Left'
bossbar remove stellarity:crystal_count
# Empress of Light
bossbar remove stellarity:eol 


# Scheduling loops that do not need
# to be executed every single tick
schedule clear stellarity:loop/timed/2_tick
schedule clear stellarity:loop/timed/3_tick
schedule clear stellarity:loop/timed/5_tick
schedule clear stellarity:loop/timed/1_second
schedule clear stellarity:loop/timed/5_second

function stellarity:util/tellraw/command {string:"uninstall",fallback:"Removed all registered Stellarity scoreboards, teams and bossbars"}
