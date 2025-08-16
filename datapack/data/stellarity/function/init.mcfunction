## Bossbars
  # Ender Dragon
    bossbar add stellarity:ender_dragon {"translate":"entity.minecraft.ender_dragon","color":"#BF00C8"}
    bossbar set stellarity:ender_dragon color pink
    bossbar set stellarity:ender_dragon players
    bossbar set stellarity:ender_dragon max 300
    bossbar set stellarity:ender_dragon style progress
    bossbar set stellarity:ender_dragon visible true

  # 'Crystals Left'
    bossbar add stellarity:crystal_count {"translate":"bossbar.stellarity.crystals_left","color":"#4C0081"}
    bossbar set stellarity:crystal_count color purple
    bossbar set stellarity:crystal_count visible true
    bossbar set stellarity:crystal_count players
    bossbar set stellarity:crystal_count max 10
    bossbar set stellarity:crystal_count style notched_10

  # Empress of Light
    bossbar add stellarity:empress_of_light {"translate":"entity.stellarity.empress_of_light","color":"#FF55FF"}
    bossbar set stellarity:empress_of_light color pink
    bossbar set stellarity:empress_of_light visible true
    bossbar set stellarity:empress_of_light players
    bossbar set stellarity:empress_of_light max 500
    bossbar set stellarity:empress_of_light style progress

  # Shulking
    bossbar add stellarity:shulking {"translate":"entity.stellarity.shulking","color":"#a26ba9"}
    bossbar set stellarity:shulking color pink
    bossbar set stellarity:shulking visible true
    bossbar set stellarity:shulking players
    bossbar set stellarity:shulking max 500
    bossbar set stellarity:shulking style progress

  ## Scoreboards creation
    # Configuration
      scoreboard objectives add stellarity.config.join_message dummy
      scoreboard objectives add stellarity.config.always_generate_egg dummy
      scoreboard objectives add stellarity.config.enable_end_crystal_drop dummy
      scoreboard objectives add stellarity.config.enable_totem_void_saving dummy
      scoreboard objectives add stellarity.config.dragon_health dummy
      scoreboard objectives add stellarity.config.empress_of_light_health dummy
      scoreboard objectives add stellarity.config.shulking_health dummy
      scoreboard objectives add stellarity.config.allow_disenchanting dummy
      scoreboard objectives add stellarity.config.track_loop_delay.empress_of_light dummy
      scoreboard objectives add stellarity.config.track_loop_delay.dragon dummy
      scoreboard objectives add stellarity.config.enable_dragon_screenshake dummy
      scoreboard objectives add stellarity.config.enable_creative_shock dummy
      scoreboard objectives add stellarity.config.nerf_elytra dummy
      scoreboard objectives add stellarity.config.boss_status_messages dummy
      scoreboard objectives add stellarity.config.migrations dummy

    # Initialize config scoreboards
      # Freshly created scoreboards have no value (not even set to 0)
        function stellarity:config/init

      ## Items
        # Dragonblade
          scoreboard objectives add stellarity.item.dragonblade.cooldown dummy
          scoreboard objectives add stellarity.item.dragonblade.stacks dummy
          scoreboard objectives add stellarity.item.dragonblade.stack_cooldown dummy
          scoreboard objectives add stellarity.item.dragonblade.until_stack_reset dummy
          scoreboard objectives add stellarity.item.dragonblade.punch_progress dummy
          scoreboard objectives add stellarity.item.dragonblade.until_punch_reset dummy
          # Armor sets
            scoreboard objectives add stellarity.item.armors.holy_protection_cooldown dummy
            scoreboard objectives add stellarity.item.armors.champion_armor.combo dummy
            scoreboard objectives add stellarity.item.armors.champion_armor.until_combo_reset dummy

          # Crest of The End
            scoreboard objectives add stellarity.item.crest.bonus_dmg dummy
            scoreboard objectives add stellarity.item.crest.time dummy

          # Copper Elektra Shield
            scoreboard objectives add stellarity.item.elektra_shield.cooldown dummy
            scoreboard objectives add stellarity.item.elektra_shield.animation dummy
            scoreboard objectives add stellarity.item.elektra_shield.dashes dummy
            scoreboard objectives add stellarity.item.elektra_shield.zap_count dummy
            scoreboard objectives add stellarity.item.elektra_shield.boost_duration dummy

          # Prismatic Punch
            scoreboard objectives add stellarity.item.prismatic_punch.particle_cycle dummy
            scoreboard objectives add stellarity.item.prismatic_punch.teleport dummy
            scoreboard objectives add stellarity.item.prismatic_punch.piercing dummy
            scoreboard objectives add stellarity.item.prismatic_punch.piercing_cooldown dummy
            scoreboard objectives add stellarity.item.prismatic_punch.multishot dummy

          # Ender Insignia
            scoreboard objectives add stellarity.item.life_crystal.heal_amount dummy

          # Spellbooks
            scoreboard objectives add stellarity.item.spellbook.conveyance.cooldown dummy
            scoreboard objectives add stellarity.item.spellbook.conveyance.id dummy
            scoreboard objectives add stellarity.item.spellbook.updraft.cooldown dummy
            scoreboard objectives add stellarity.item.spellbook.updraft.animation dummy
            scoreboard objectives add stellarity.item.spellbook.light.cooldown dummy
            scoreboard objectives add stellarity.item.spellbook.jinx.cooldown dummy
            scoreboard objectives add stellarity.item.spellbook.return.cooldown dummy
            scoreboard objectives add stellarity.item.spellbook.obstruct.cooldown dummy
            scoreboard objectives add stellarity.item.spellbook.return.progress dummy
            scoreboard objectives add stellarity.item.spellbook.give_back.hand dummy

          # Fluffy Hammer
            scoreboard objectives add stellarity.item.fluffy_hammer.throw_cooldown dummy

          scoreboard objectives add stellarity.item.satchel_of_voids.cooldown dummy

        # Empress Wings
          scoreboard objectives add stellarity.item.empress_wings.particles dummy

        # Fish
          # yeah, only 1
            scoreboard objectives add stellarity.item.fish.crystal_heartfish.total_consumed dummy

          # The Beginning and The End
            scoreboard objectives add stellarity.item.spirit_dagger.attract_cooldown dummy
            scoreboard objectives add stellarity.item.spirit_dagger.consume_time dummy
            scoreboard objectives add stellarity.item.spirit_dagger.until_consume_reset dummy
            scoreboard objectives add stellarity.item.spirit_dagger.effects_duration dummy

          # Harvester, AKA Aery Sword
            scoreboard objectives add stellarity.item.harvester.damage dummy
            scoreboard objectives add stellarity.item.harvester.progress.frost_barrier dummy
            scoreboard objectives add stellarity.item.harvester.progress.cryonics dummy
            scoreboard objectives add stellarity.item.harvester.progress.piercing_cold dummy
            scoreboard objectives add stellarity.item.harvester.progress.frostburn dummy
            scoreboard objectives add stellarity.item.harvester.progress.arctic_wind dummy
            scoreboard objectives add stellarity.item.harvester.progress.anima_conduit dummy
            scoreboard objectives add stellarity.item.harvester.progress.echo dummy
            scoreboard objectives add stellarity.item.harvester.progress.embrittlement dummy
            scoreboard objectives add stellarity.item.harvester.cryonics.duration dummy
            scoreboard objectives add stellarity.item.harvester.cryonics.cooldown dummy

          # Kaleidoscope
            scoreboard objectives add stellarity.item.kaleidoscope.charge dummy
            scoreboard objectives add stellarity.item.kaleidoscope.charge_progress dummy

          # Prismatic Pearl
            scoreboard objectives add stellarity.item.prismatic_pearl.cooldown dummy

          # Prismember
            scoreboard objectives add stellarity.item.prismember.charge dummy
            scoreboard objectives add stellarity.item.prismember.until_charge_reset dummy
            scoreboard objectives add stellarity.item.prismember.cooldown dummy

          # Tamaris
            scoreboard objectives add stellarity.item.tamaris.math.health.current dummy
            scoreboard objectives add stellarity.item.tamaris.math.health.max dummy
            scoreboard objectives add stellarity.item.tamaris.math.health.percentage dummy
            scoreboard objectives add stellarity.item.tamaris.animation.progress dummy
            scoreboard objectives add stellarity.item.tamaris.execute_cooldown dummy

          # Chorus Dagger
            scoreboard objectives add stellarity.item.chorus_dagger.cooldown dummy

          # Starless Scythe
            scoreboard objectives add stellarity.item.starless_scythe.time_since_attack dummy

          # Stellar Striker
            scoreboard objectives add stellarity.item.stellar_striker.stars.collect_time dummy
            scoreboard objectives add stellarity.item.stellar_striker.stars.amount dummy
            scoreboard objectives add stellarity.item.stellar_striker.time_since_attack dummy
            scoreboard objectives add stellarity.item.stellar_striker.cooldown dummy

          # Spectral Fury
            scoreboard objectives add stellarity.item.spectral_fury.charge dummy
            scoreboard objectives add stellarity.item.spectral_fury.until_charge_reset dummy
            scoreboard objectives add stellarity.item.spectral_fury.pierce_count dummy
            scoreboard objectives add stellarity.item.spectral_fury.damage dummy

          # Sandstorm Trident
            scoreboard objectives add stellarity.item.sandstorm_trident.id dummy
            scoreboard objectives add stellarity.item.sandstorm_trident.trail_pos dummy

          scoreboard objectives add stellarity.item.elytra.damage dummy
          scoreboard objectives add stellarity.item.elytra.unbreaking dummy



    ## Mobs
      # Empress of Light
        scoreboard objectives add stellarity.empress_of_light.animation dummy
        scoreboard objectives add stellarity.empress_of_light.health dummy
        scoreboard objectives add stellarity.empress_of_light.health_percent dummy
        scoreboard objectives add stellarity.empress_of_light.hurt_time dummy
        scoreboard objectives add stellarity.empress_of_light.attack_cycle dummy
        scoreboard objectives add stellarity.empress_of_light.attack_duration dummy
        scoreboard objectives add stellarity.empress_of_light.attack_cooldown dummy
        scoreboard objectives add stellarity.empress_of_light.projectile_age dummy

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
        scoreboard objectives add stellarity.dragon.ball_of_blight_cooldown dummy

      # Phantoms
        scoreboard objectives add stellarity.phantom.size dummy
        scoreboard objectives add stellarity.phantom.wings_drop_chance dummy

      ## Boss music
        scoreboard objectives add stellarity.music.ender_dragon.timer dummy
        scoreboard objectives add stellarity.music.empress_of_light.timer dummy

      ## Mechanics
        scoreboard objectives add stellarity.altar_of_the_accursed.count dummy
        scoreboard objectives add stellarity.live_time dummy
        scoreboard objectives add stellarity.health dummy

      scoreboard objectives add stellarity.mechanics.void_fishing.length dummy
      scoreboard objectives add stellarity.mechanics.void_fishing.max_time dummy
      scoreboard objectives add stellarity.mechanics.void_fishing.can_fish dummy
      scoreboard objectives add stellarity.mechanics.consecration.time dummy
      scoreboard objectives add stellarity.mechanics.altar_of_the_sacred.timer dummy
      scoreboard objectives add stellarity.mechanics.cauldron_crafting.items_inside dummy
      scoreboard objectives add stellarity.mechanics.cauldron_crafting.breath_left dummy

    ## Enchantments
      scoreboard objectives add stellarity.enchantments.critical_strike.can_crit dummy

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

  function stellarity:util/stringlib/zprivate/load

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

team add stellarity.empress_of_light.night_glow
team modify stellarity.empress_of_light.night_glow color light_purple

team add stellarity.empress_of_light.day_glow
team modify stellarity.empress_of_light.day_glow color yellow

team add stellarity.dragons_eye.pacified
team modify stellarity.dragons_eye.pacified friendlyFire true
team modify stellarity.dragons_eye.pacified seeFriendlyInvisibles false
team modify stellarity.dragons_eye.pacified collisionRule pushOtherTeams

team add stellarity.dragon.pacify_others
team modify stellarity.dragon.pacify_others friendlyFire false



# Scheduling loops that do not need
# to be executed every single tick
  schedule function stellarity:loop/timed/2_tick 2t append
  schedule function stellarity:loop/timed/3_tick 3t append
  schedule function stellarity:loop/timed/5_tick 5t append
  schedule function stellarity:loop/timed/1_second 1s append
  schedule function stellarity:loop/timed/5_second 5s append

# Get world difficulty
  execute store result score #difficulty stellarity.misc run difficulty

execute unless score #stellarity.config stellarity.config.join_message matches 0 run schedule function stellarity:tellraw/schedule 5t
