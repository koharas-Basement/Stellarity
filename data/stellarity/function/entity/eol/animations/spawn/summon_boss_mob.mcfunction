particle explosion_emitter ~ ~-1 ~ 0 0 0 0 1 force @a[distance=..64]
particle end_rod ~ ~1 ~ 0 0 0 0.45 150 normal

playsound minecraft:item.trident.thunder hostile @a[distance=0..] ~ ~1 ~ 1 0.8
playsound minecraft:entity.allay.ambient_without_item hostile @a[distance=0..] ~ ~1 ~ 1.5 0.8
playsound entity.player.levelup hostile @a[distance=0..] ~ ~ ~ .33 .55
playsound minecraft:entity.warden.sonic_boom hostile @a[distance=0..] ~ ~1 ~ 0.5 1

# Vindicator for hitbox and HP
  summon minecraft:vindicator ~ ~-1.5 ~ {NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Silent:1b,active_effects:[{id:"minecraft:invisibility",duration:-1,show_particles:0b}],Tags:["stellarity.eol","kohara.boss","stellarity.eol.phase_1","smithed.entity"],Invulnerable:1b,attributes:[{id:"armor",base:12d},{id:"armor_toughness",base:4d},{id:"max_health",base:500d}],equipment:{mainhand:{id:"minecraft:totem_of_undying",count:1},offhand:{id:"minecraft:totem_of_undying",count:1b}},drop_chances:{mainhand:0.0,offhand:0.0}, Health:500f,DeathLootTable:""}

# Armor Stand for the model
  summon armor_stand ~ ~-1.5 ~ {Pose:{LeftLeg:[8f,347f,0f],RightLeg:[10f,18f,0f],LeftArm:[349f,333f,355f],RightArm:[341f,12f,5f]},ShowArms:1b,Tags:["stellarity.eol.as","smithed.entity","smithed.strict"],Marker:1b,Invisible:0b,NoGravity:1b,NoBasePlate:1b}

execute positioned ~ ~-1.5 ~ as @n[type=vindicator,tag=stellarity.eol] at @s run function stellarity:entity/eol/animations/spawn/summon_marker with entity @s

execute if predicate stellarity:entity/eol/is_daytime run data merge entity @n[type=armor_stand,tag=stellarity.eol.as] {equipment:{ \
head:{id:"minecraft:player_head",components:{"minecraft:profile":{id:[I;27748125,144067456,-1274466997,-1657885897],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTZjNzA1ZDhkZTc4ZTZiMDdjNjdiMTVlNDRiM2NlY2VlNDM0OWZmMTJlODFlNWU0NzdiYWU2YjYyZDI2OGJmIn19fQ=="}]}},count:1b},\
chest:{id:"minecraft:leather_chestplate",components:{"minecraft:dyed_color":16765255},count:1b},\
legs:{id:"minecraft:leather_leggings",components:{"minecraft:dyed_color":16765255},count:1b},\
feet:{id:"minecraft:leather_boots",components:{"minecraft:dyed_color":3847130},count:1b}, mainhand:{id:"acacia_boat",components:{item_model:"stellarity:soaring_insignia"}},offhand:{id:"acacia_boat",components:{item_model:"stellarity:kaleidoscope"}}}}

execute unless predicate stellarity:entity/eol/is_daytime run data merge entity @n[type=armor_stand,tag=stellarity.eol.as] {equipment:{\
head:{id:"minecraft:player_head",components:{"minecraft:profile":{id:[I;27748125,144067456,-1274466997,-1657885897],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTZjNzA1ZDhkZTc4ZTZiMDdjNjdiMTVlNDRiM2NlY2VlNDM0OWZmMTJlODFlNWU0NzdiYWU2YjYyZDI2OGJmIn19fQ=="}]}},count:1b},\
chest:{id:"minecraft:leather_chestplate",components:{"minecraft:dyed_color":13061821},count:1b},\
legs:{id:"minecraft:leather_leggings",components:{"minecraft:dyed_color":13061821},count:1b},\
feet:{id:"minecraft:leather_boots",components:{"minecraft:dyed_color":3847130},count:1b},mainhand:{id:"acacia_boat",components:{item_model:"stellarity:prismatic_punch"}},offhand:{id:"acacia_boat",components:{item_model:"stellarity:prismember"}}}}

# Rotate the armor stand to face the nearest player
  execute as @n[type=vindicator,tag=stellarity.eol] at @s facing entity @p eyes run tp @s ~ ~ ~ ~ ~
  scoreboard players set @n[type=vindicator,tag=stellarity.eol] stellarity.eol.attack_cooldown 0

execute if predicate stellarity:entity/eol/is_daytime run tag @n[type=vindicator,tag=stellarity.eol] add stellarity.eol.full_daytime

execute store result entity @n[type=vindicator,tag=stellarity.eol] attributes[{id:"minecraft:max_health"}].base float 1 run scoreboard players get #stellarity.config stellarity.config.eol_health
execute store result entity @n[type=vindicator,tag=stellarity.eol] Health float 1 run scoreboard players get #stellarity.config stellarity.config.eol_health
execute store result bossbar stellarity:eol max run scoreboard players get #stellarity.config stellarity.config.eol_health

function stellarity:entity/eol/animations/spawn/summon_wings

execute if score #stellarity.config stellarity.config.boss_status_messages matches 1 run tellraw @a ["\n",{"translate":"entity.stellarity.empress_of_light.spawn","with":[{"translate":"entity.stellarity.empress_of_light"}],"color":"#AF4BFF"},"\n"]

execute as @a run function stellarity:entity/dragon/music/reset
