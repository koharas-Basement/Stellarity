## Scoreboards creation
# Configuration
scoreboard objectives add stellarity.config.join_message dummy
scoreboard objectives add stellarity.config.always_generate_egg dummy
scoreboard objectives add stellarity.config.dragon_health dummy
scoreboard objectives add stellarity.config.eol_health dummy
scoreboard objectives add stellarity.config.allow_disenchanting dummy
scoreboard objectives add stellarity.config.enable_treasure_heads dummy
scoreboard objectives add stellarity.config.track_loop_delay.eol dummy
scoreboard objectives add stellarity.config.track_loop_delay.dragon dummy
scoreboard objectives add stellarity.config.enable_dragon_screenshake dummy
scoreboard objectives add stellarity.config.enable_creative_shock dummy
scoreboard objectives add stellarity.config.nerf_elytra dummy

# Initialize config scoreboards
# Freshly created scoreboards have no value (not even set to 0)
function stellarity:config/init

## Items
# Dragonblade
scoreboard objectives add stellarity.items.dragonblade.cooldown dummy
scoreboard objectives add stellarity.items.dragonblade.stacks dummy
scoreboard objectives add stellarity.items.dragonblade.until_stack_reset dummy
scoreboard objectives add stellarity.items.dragonblade.punch_progress dummy
scoreboard objectives add stellarity.items.dragonblade.until_punch_reset dummy
# Armor sets
scoreboard objectives add stellarity.items.armors.holy_protection_cooldown dummy
scoreboard objectives add stellarity.items.armors.chorus_champion_armor.combo dummy
scoreboard objectives add stellarity.items.armors.chorus_champion_armor.until_combo_reset dummy

# Clockwork Crossbow
scoreboard objectives add stellarity.items.clockwork_crossbow.time_since_last_shot dummy
scoreboard objectives add stellarity.items.clockwork_crossbow.should_save dummy

# Crest of The End
scoreboard objectives add stellarity.items.crest.bonus_dmg dummy
scoreboard objectives add stellarity.items.crest.time dummy

# Copper Elektra Shield
scoreboard objectives add stellarity.items.elektra_shield.cooldown dummy
scoreboard objectives add stellarity.items.elektra_shield.animation dummy
scoreboard objectives add stellarity.items.elektra_shield.dashes dummy

# Prismatic Punch
scoreboard objectives add stellarity.items.prismatic_punch.particle_cycle dummy
scoreboard objectives add stellarity.items.prismatic_punch.teleport dummy
scoreboard objectives add stellarity.items.prismatic_punch.piercing dummy
scoreboard objectives add stellarity.items.prismatic_punch.piercing_cooldown dummy
scoreboard objectives add stellarity.items.prismatic_punch.multishot dummy

# Ender Insignia
scoreboard objectives add stellarity.items.ender_insignia.hold_duration dummy

# Spellbooks
scoreboard objectives add stellarity.items.spellbook.conveyance.cooldown dummy
scoreboard objectives add stellarity.items.spellbook.conveyance.id dummy
scoreboard objectives add stellarity.items.spellbook.updraft.cooldown dummy
scoreboard objectives add stellarity.items.spellbook.updraft.animation dummy
scoreboard objectives add stellarity.items.spellbook.light.cooldown dummy
scoreboard objectives add stellarity.items.spellbook.natures_wrath.cooldown.shoot dummy
scoreboard objectives add stellarity.items.spellbook.natures_wrath.cooldown.wolves dummy
scoreboard objectives add stellarity.items.spellbook.natures_wrath.homing_time dummy
scoreboard objectives add stellarity.items.spellbook.natures_wrath.order dummy
scoreboard objectives add stellarity.items.spellbook.jinx.cooldown dummy
scoreboard objectives add stellarity.items.spellbook.return.cooldown dummy
scoreboard objectives add stellarity.items.spellbook.return.progress dummy

# Empress Wings
scoreboard objectives add stellarity.items.empress_wings.particles dummy

# Fish
# yeah, only 1
scoreboard objectives add stellarity.items.fish.crystal_heartfish.total_consumed dummy

# The Beginning and The End
scoreboard objectives add stellarity.items.spirit_dagger.attract_cooldown dummy
scoreboard objectives add stellarity.items.spirit_dagger.consume_time dummy
scoreboard objectives add stellarity.items.spirit_dagger.until_consume_reset dummy
scoreboard objectives add stellarity.items.spirit_dagger.effects_duration dummy

# Frigid Harvester, AKA Aery Sword
scoreboard objectives add stellarity.items.aery_sword.damage dummy
scoreboard objectives add stellarity.items.aery_sword.kills.iron_golem minecraft.killed:minecraft.iron_golem
scoreboard objectives add stellarity.items.aery_sword.kills.ender_dragon minecraft.killed:minecraft.ender_dragon
scoreboard objectives add stellarity.items.aery_sword.kills.witch minecraft.killed:minecraft.witch
scoreboard objectives add stellarity.items.aery_sword.kills.blaze minecraft.killed:minecraft.blaze
scoreboard objectives add stellarity.items.aery_sword.kills.stray minecraft.killed:minecraft.stray
scoreboard objectives add stellarity.items.aery_sword.kills.wither minecraft.killed:minecraft.wither
scoreboard objectives add stellarity.items.aery_sword.kills.witch.count dummy
scoreboard objectives add stellarity.items.aery_sword.kills.blaze.count dummy
scoreboard objectives add stellarity.items.aery_sword.kills.stray.count dummy
scoreboard objectives add stellarity.items.aery_sword.cryonics.duration dummy
scoreboard objectives add stellarity.items.aery_sword.cryonics.cooldown dummy

# Kaleidoscope
scoreboard objectives add stellarity.items.kaleidoscope.charge dummy
scoreboard objectives add stellarity.items.kaleidoscope.charge_progress dummy

# Prismatic Pearl
scoreboard objectives add stellarity.items.prismatic_pearl.cooldown dummy

# Prismember
scoreboard objectives add stellarity.items.prismember.charge dummy
scoreboard objectives add stellarity.items.prismember.until_charge_reset dummy
scoreboard objectives add stellarity.items.prismember.cooldown dummy

# Tamaris
scoreboard objectives add stellarity.items.tamaris.math.health.current dummy
scoreboard objectives add stellarity.items.tamaris.math.health.max dummy
scoreboard objectives add stellarity.items.tamaris.math.health.percentage dummy
scoreboard objectives add stellarity.items.tamaris.animation.progress dummy
scoreboard objectives add stellarity.items.tamaris.execute_cooldown dummy

# Chorus Dagger
scoreboard objectives add stellarity.items.chorus_dagger.cooldown dummy

# Starless Scythe
scoreboard objectives add stellarity.items.starless_scythe.time_since_attack dummy

# Stellar Striker
scoreboard objectives add stellarity.items.stellar_striker.stars.collect_time dummy
scoreboard objectives add stellarity.items.stellar_striker.stars.amount dummy
scoreboard objectives add stellarity.items.stellar_striker.time_since_attack dummy
scoreboard objectives add stellarity.items.stellar_striker.cooldown dummy

# Spectral Fury
scoreboard objectives add stellarity.items.spectral_fury.charge dummy
scoreboard objectives add stellarity.items.spectral_fury.until_charge_reset dummy
scoreboard objectives add stellarity.items.spectral_fury.pierce_count dummy
scoreboard objectives add stellarity.items.spectral_fury.damage dummy

## Mobs
# Empress of Light
scoreboard objectives add stellarity.eol.animation dummy
scoreboard objectives add stellarity.eol.health dummy
scoreboard objectives add stellarity.eol.hurt_time dummy
scoreboard objectives add stellarity.eol.attack_cycle dummy
scoreboard objectives add stellarity.eol.attack_duration dummy
scoreboard objectives add stellarity.eol.attack_cooldown dummy
scoreboard objectives add stellarity.eol.projectile_age dummy

# Ender Dragon
scoreboard objectives add stellarity.dragon.times_killed dummy
scoreboard objectives add stellarity.dragon.screenshake dummy
scoreboard objectives add stellarity.dragon.respawn_animation_progress dummy
scoreboard objectives add stellarity.dragon.perch_cooldown dummy
scoreboard objectives add stellarity.dragon.health dummy
scoreboard objectives add stellarity.dragon.health_percent dummy
scoreboard objectives add stellarity.dragon.health_old dummy
scoreboard objectives add stellarity.dragon.time_chainfiring dummy
scoreboard objectives add stellarity.dragon.shulker_hell dummy
scoreboard objectives add stellarity.dragon.heartbeat dummy

# Phantoms
scoreboard objectives add stellarity.phantom.size dummy

## Boss music
scoreboard objectives add stellarity.music.ender_dragon.timer dummy
scoreboard objectives add stellarity.music.empress_of_light.timer dummy

## Mechanics
scoreboard objectives add stellarity.mechanics.void_fishing.length dummy
scoreboard objectives add stellarity.mechanics.void_fishing.max_time dummy
scoreboard objectives add stellarity.mechanics.void_fishing.can_fish dummy
scoreboard objectives add stellarity.mechanics.consecration.time dummy
scoreboard objectives add stellarity.mechanics.altar_of_the_sacred.timer dummy

## Misc
# Temporar variables OR things that don't need its own variable
scoreboard objectives add stellarity.misc dummy
scoreboard objectives add stellarity.misc2 dummy
scoreboard objectives add stellarity.misc3 dummy
scoreboard objectives add stellarity.misc4 dummy
scoreboard objectives add stellarity.misc.end_portal_animation dummy
scoreboard objectives add stellarity.misc.end_portal_bg_loop dummy

scoreboard objectives add stellarity.misc.motion.x1 dummy
scoreboard objectives add stellarity.misc.motion.x2 dummy
scoreboard objectives add stellarity.misc.motion.y1 dummy
scoreboard objectives add stellarity.misc.motion.y2 dummy
scoreboard objectives add stellarity.misc.motion.z1 dummy
scoreboard objectives add stellarity.misc.motion.z2 dummy

scoreboard objectives add stellarity.misc.loop.2t dummy
scoreboard objectives add stellarity.misc.loop.3t dummy
scoreboard objectives add stellarity.misc.loop.5t dummy
scoreboard objectives add stellarity.misc.loop.1s dummy
scoreboard objectives add stellarity.misc.loop.10s dummy
scoreboard objectives add stellarity.misc.loop.15s dummy

## Creating teams
team add stellarity.purple_glow
team modify stellarity.purple_glow color dark_purple

team add stellarity.golden_glow
team modify stellarity.golden_glow color gold

team add stellarity.spirit_glow
team modify stellarity.spirit_glow color aqua

team add stellarity.homing_targets
team modify stellarity.homing_targets color aqua

team add stellarity.rave_glow
team modify stellarity.rave_glow color red

team add stellarity.phantom_glow
team modify stellarity.phantom_glow color green

team add stellarity.eol.night_glow
team modify stellarity.eol.night_glow color light_purple

team add stellarity.eol.day_glow
team modify stellarity.eol.day_glow color yellow

team add stellarity.dragons_eye.pacified
team modify stellarity.dragons_eye.pacified friendlyFire true
team modify stellarity.dragons_eye.pacified seeFriendlyInvisibles false
team modify stellarity.dragons_eye.pacified collisionRule pushOtherTeams

team add stellarity.dragon.pacify_others
team modify stellarity.dragon.pacify_others friendlyFire false

## Bossbars
# Ender Dragon
bossbar add stellarity:ender_dragon {"translate":"entity.minecraft.ender_dragon","color":"#BF00C8"}
bossbar set stellarity:ender_dragon color pink
bossbar set stellarity:ender_dragon players
bossbar set stellarity:ender_dragon max 300
bossbar set stellarity:ender_dragon style progress
bossbar set stellarity:ender_dragon visible true
# 'Crystals Left'
bossbar add stellarity:crystal_count {"translate":"stellarity.bossbars.crystals_left","fallback":"Crystals Left: %s","color":"#4C0081"}
bossbar set stellarity:crystal_count color purple
bossbar set stellarity:crystal_count visible true
bossbar set stellarity:crystal_count players
bossbar set stellarity:crystal_count max 10
bossbar set stellarity:crystal_count style notched_10
# Empress of Light
bossbar add stellarity:eol {"translate":"stellarity.mobs.empress","fallback":"Empress of Light","color":"#FF55FF"}
bossbar set stellarity:eol color pink
bossbar set stellarity:eol visible true
bossbar set stellarity:eol players
bossbar set stellarity:eol max 500
bossbar set stellarity:eol style progress

# Scheduling loops that do not need
# to be executed every single tick
schedule function stellarity:loops/timed/2_tick 2t append
schedule function stellarity:loops/timed/3_tick 3t append
schedule function stellarity:loops/timed/5_tick 5t append
schedule function stellarity:loops/timed/1_second 1s append
schedule function stellarity:loops/timed/5_second 5s append

# Get world difficulty
execute store result score #difficulty stellarity.misc run difficulty

execute unless score #stellarity.config stellarity.config.join_message matches 0 run schedule function stellarity:tellraw/schedule 5t

data modify storage stellarity:temp spellbook_fix set value 1b