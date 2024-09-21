particle explosion_emitter ~ ~-1 ~ 0 0 0 0 1 force @a[distance=..64]
particle end_rod ~ ~1 ~ 0 0 0 0.45 150 normal

playsound minecraft:item.trident.thunder hostile @a[distance=0..] ~ ~1 ~ 1 0.8
playsound minecraft:entity.allay.ambient_without_item hostile @a[distance=0..] ~ ~1 ~ 1.5 0.8
playsound entity.player.levelup hostile @a[distance=0..] ~ ~ ~ .33 .55
playsound minecraft:entity.warden.sonic_boom hostile @a[distance=0..] ~ ~1 ~ 0.5 1

# Vindicator for hitbox and HP
summon minecraft:vindicator ~ ~-1.5 ~ {NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Silent:1b,active_effects:[{id:"minecraft:invisibility",duration:-1,show_particles:0b}],Tags:["stellarity.eol","kohara.boss","stellarity.eol.phase_1"],Invulnerable:1b,Attributes:[{Name:"generic.armor",Base:12d},{Name:"generic.armor_toughness",Base:4d},{Name:"generic.max_health",Base:500d}],HandItems:[{id:"minecraft:totem_of_undying",Count:1b}],HandDropChances:[0f,0f],Health:500f,DeathLootTable:"minecraft:empty"}

# Armor Stand for the model
summon armor_stand ~ ~-1.5 ~ {Pose:{LeftLeg:[8f,347f,0f],RightLeg:[10f,18f,0f],LeftArm:[349f,333f,355f],RightArm:[341f,12f,5f]},ShowArms:1b,Tags:["stellarity.eol.as"],Marker:1b,Invisible:0b,NoGravity:1b,NoBasePlate:1b}
 
execute if predicate stellarity:mobs/eol/is_daytime run data merge entity @e[type=armor_stand,limit=1,sort=nearest,tag=stellarity.eol.as] {ArmorItems:[{id:"minecraft:leather_boots",tag:{display:{color:3847130}},Count:1b},{id:"minecraft:leather_leggings",tag:{display:{color:16765255}},Count:1b},{id:"minecraft:leather_chestplate",tag:{display:{color:16765255}},Count:1b},{id:"minecraft:player_head",tag:{SkullOwner: {Id: [I; 27748125, 144067456, -1274466997, -1657885897], Properties: {textures: [{Value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTZjNzA1ZDhkZTc4ZTZiMDdjNjdiMTVlNDRiM2NlY2VlNDM0OWZmMTJlODFlNWU0NzdiYWU2YjYyZDI2OGJmIn19fQ=="}]}}},Count:1b}]}

execute unless predicate stellarity:mobs/eol/is_daytime run data merge entity @e[type=armor_stand,limit=1,sort=nearest,tag=stellarity.eol.as] {ArmorItems:[{id:"minecraft:leather_boots",tag:{display:{color:3847130}},Count:1b},{id:"minecraft:leather_leggings",tag:{display:{color:13061821}},Count:1b},{id:"minecraft:leather_chestplate",tag:{display:{color:13061821}},Count:1b},{id:"minecraft:player_head",tag:{SkullOwner: {Id: [I; 27748125, 144067456, -1274466997, -1657885897], Properties: {textures: [{Value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTZjNzA1ZDhkZTc4ZTZiMDdjNjdiMTVlNDRiM2NlY2VlNDM0OWZmMTJlODFlNWU0NzdiYWU2YjYyZDI2OGJmIn19fQ=="}]}}},Count:1b}]}

# Rotate the armor stand to face the nearest player
execute as @e[type=vindicator,limit=1,sort=nearest,tag=stellarity.eol] at @s facing entity @p eyes run tp @s ~ ~ ~ ~ ~
scoreboard players set @e[type=vindicator,limit=1,sort=nearest,tag=stellarity.eol] stellarity.eol.attack_cooldown 0

execute if predicate stellarity:mobs/eol/is_daytime run tag @e[type=vindicator,limit=1,sort=nearest,tag=stellarity.eol] add stellarity.eol.full_daytime

execute store result entity @e[type=vindicator,limit=1,sort=nearest,tag=stellarity.eol] Attributes[{Name:"minecraft:generic.max_health"}].Base float 1 run scoreboard players get #stellarity.config stellarity.config.eol_health
execute store result entity @e[type=vindicator,limit=1,sort=nearest,tag=stellarity.eol] Health float 1 run scoreboard players get #stellarity.config stellarity.config.eol_health
execute store result bossbar stellarity:eol max run scoreboard players get #stellarity.config stellarity.config.eol_health

function stellarity:mobs/eol/animations/spawn/summon_wings

execute as @a run function stellarity:mobs/dragon/music/reset
