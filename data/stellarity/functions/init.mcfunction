## Scoreboards creation
# Configuration
scoreboard objectives add stellarity.config.join_message dummy
scoreboard objectives add stellarity.config.always_generate_egg dummy
scoreboard objectives add stellarity.config.dragon_health dummy

# Initialize config scoreboards that do not have a value at start,
# but require them to work properly (or at all)
# Freshly created scoreboards have no value (not even set to 0)
# The trick I used is checking whether a given scoreboard is SET TO A NUMBER
# 'null' is not a number, remember!
# *coughs in German*
function stellarity:config/init

## Items
scoreboard objectives add stellarity.items.dragonblade.cooldown dummy
scoreboard objectives add stellarity.items.dragonblade.stacks dummy
scoreboard objectives add stellarity.items.dragonblade.until_stack_reset dummy
scoreboard objectives add stellarity.items.dragonblade.punch_progress dummy
scoreboard objectives add stellarity.items.dragonblade.until_punch_reset dummy
scoreboard objectives add stellarity.items.dragonblade.misc_cooldown dummy

scoreboard objectives add stellarity.items.pandoras_barrel.raycast dummy
scoreboard objectives add stellarity.items.pandoras_barrel.animation dummy
scoreboard objectives add stellarity.items.pandoras_barrel.summon_id dummy

scoreboard objectives add stellarity.items.armors.holy_protection_cooldown dummy
scoreboard objectives add stellarity.items.armors.ancient_armor.combo dummy
scoreboard objectives add stellarity.items.armors.ancient_armor.until_combo_reset dummy

scoreboard objectives add stellarity.items.sharanga.arrow_age dummy

scoreboard objectives add stellarity.items.clockwork_crossbow.arrow_amount dummy
scoreboard objectives add stellarity.items.clockwork_crossbow.slowdown_time dummy
scoreboard objectives add stellarity.items.clockwork_crossbow.cooldown dummy
scoreboard objectives add stellarity.items.clockwork_crossbow.should_save dummy

scoreboard objectives add stellarity.items.crest.bonus_dmg dummy
scoreboard objectives add stellarity.items.crest.time dummy

scoreboard objectives add stellarity.items.elektra_shield.cooldown dummy
scoreboard objectives add stellarity.items.elektra_shield.animation dummy

scoreboard objectives add stellarity.items.prismatic_punch.particle_cycle dummy
scoreboard objectives add stellarity.items.prismatic_punch.teleport dummy
scoreboard objectives add stellarity.items.prismatic_punch.piercing dummy
scoreboard objectives add stellarity.items.prismatic_punch.piercing_cooldown dummy
scoreboard objectives add stellarity.items.prismatic_punch.multishot dummy

scoreboard objectives add stellarity.items.ender_insignia.hold_duration dummy

scoreboard objectives add stellarity.items.sabrewing.charge dummy
scoreboard objectives add stellarity.items.sabrewing.until_charge_reset dummy

scoreboard objectives add stellarity.items.spellbook.conveyance.cooldown dummy
scoreboard objectives add stellarity.items.spellbook.conveyance.id dummy
scoreboard objectives add stellarity.items.spellbook.updraft.cooldown dummy
scoreboard objectives add stellarity.items.spellbook.updraft.animation dummy
scoreboard objectives add stellarity.items.spellbook.light.cooldown dummy
scoreboard objectives add stellarity.items.spellbook.natures_wrath.cooldown.shoot dummy
scoreboard objectives add stellarity.items.spellbook.natures_wrath.cooldown.wolves dummy
scoreboard objectives add stellarity.items.spellbook.natures_wrath.homing_time dummy

scoreboard objectives add stellarity.items.fish.crystal_heartfish.total_consumed dummy

scoreboard objectives add stellarity.items.spirit_dagger.attract_cooldown dummy
scoreboard objectives add stellarity.items.spirit_dagger.consume_time dummy
scoreboard objectives add stellarity.items.spirit_dagger.until_consume_reset dummy
scoreboard objectives add stellarity.items.spirit_dagger.effects_duration dummy

scoreboard objectives add stellarity.items.aery_sword.damage dummy

scoreboard objectives add stellarity.items.kaleidoscope.charge dummy

scoreboard objectives add stellarity.items.prismatic_pearl.cooldown dummy

scoreboard objectives add stellarity.items.prismember.charge dummy
scoreboard objectives add stellarity.items.prismember.until_charge_reset dummy
scoreboard objectives add stellarity.items.prismember.cooldown dummy

scoreboard objectives add stellarity.items.tamaris.math.health.current dummy
scoreboard objectives add stellarity.items.tamaris.math.health.max dummy
scoreboard objectives add stellarity.items.tamaris.math.health.percentage dummy
scoreboard objectives add stellarity.items.tamaris.animation.progress dummy
scoreboard objectives add stellarity.items.tamaris.execute_cooldown dummy

scoreboard objectives add stellarity.items.chorus_dagger.cooldown dummy

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
scoreboard objectives add stellarity.dragon.perch_cooldown dummy
scoreboard objectives add stellarity.dragon.health_percent dummy
scoreboard objectives add stellarity.dragon.health_old dummy
scoreboard objectives add stellarity.dragon.time_chainfiring dummy
scoreboard objectives add stellarity.dragon.shulker_hell dummy
scoreboard objectives add stellarity.dragon.heartbeat dummy

# Phantoms
scoreboard objectives add stellarity.phantom.size dummy

## Mechanics
scoreboard objectives add stellarity.mechanics.void_fishing.length dummy
scoreboard objectives add stellarity.mechanics.void_fishing.max_time dummy
scoreboard objectives add stellarity.mechanics.void_fishing.can_fish dummy
scoreboard objectives add stellarity.mechanics.void_totem_protection_time dummy
scoreboard objectives add stellarity.mechanics.consecration.time dummy

## Misc
# Temporar variables OR things that don't need its own variable
scoreboard objectives add stellarity.misc dummy
scoreboard objectives add stellarity.misc2 dummy
scoreboard objectives add stellarity.misc3 dummy
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

execute unless score #stellarity.config stellarity.config.join_message matches 0 run schedule function stellarity:tellraw 5t

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

team add stellarity.dragons_eye.pacified
team modify stellarity.dragons_eye.pacified friendlyFire true
team modify stellarity.dragons_eye.pacified seeFriendlyInvisibles false
team modify stellarity.dragons_eye.pacified collisionRule pushOtherTeams

## Bossbars
# 'Crystals Left'
bossbar add stellarity:crystal_count {"translate":"stellarity.bossbars.crystals_left","fallback":"Crystals Left:","color":"#4C0081"}
bossbar set stellarity:crystal_count color purple
bossbar set stellarity:crystal_count visible true
bossbar set stellarity:crystal_count players
bossbar set stellarity:crystal_count max 10
bossbar set stellarity:crystal_count style notched_10
# Empress of Light
bossbar add stellarity:eol {"translate":"stellarity.mobs.empress","fallback":"Empress of Light","color":"pink"}
bossbar set stellarity:eol color pink
bossbar set stellarity:eol visible true
bossbar set stellarity:eol players
bossbar set stellarity:eol max 500
bossbar set stellarity:eol style notched_10

# Scheduling loops that do not need
# to be executed every single tick
schedule function stellarity:loops/timed/2_tick 2t append
schedule function stellarity:loops/timed/3_tick 3t append
schedule function stellarity:loops/timed/5_tick 5t append
schedule function stellarity:loops/timed/1_second 1s append
schedule function stellarity:loops/timed/5_second 5s append

# Initialize RNG
function kohara:rng/init

# Get world difficulty
execute store result score #difficulty stellarity.misc run difficulty

# Initialize all DOT related scoreboards
data modify storage stellarity:temp spellbook_fix set value 1b
