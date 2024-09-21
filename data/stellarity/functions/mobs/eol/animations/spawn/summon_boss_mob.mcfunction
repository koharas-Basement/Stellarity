particle explosion_emitter
particle end_rod ~ ~1 ~ 0 0 0 1 150 force

playsound minecraft:item.trident.thunder hostile @a[distance=0..] ~ ~1 ~ 0.22 1
playsound minecraft:entity.blaze.death hostile @a[distance=0..] ~ ~1 ~ 0.55 0
playsound minecraft:entity.allay.ambient_without_item hostile @a[distance=0..] ~ ~1 ~ 2.2 0.8
playsound entity.player.levelup hostile @a[distance=0..] ~ ~ ~ .33 .55
playsound minecraft:entity.generic.explode hostile @a[distance=0..] ~ ~1 ~

# Vindicator for hitbox and HP
summon minecraft:vindicator ~ ~-1.5 ~ {NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Silent:1b,active_effects:[{id:"minecraft:invisibility",duration:-1,show_particles:0b},{id:"minecraft:regeneration",duration:-1,amplifier:0b,show_particles:0b}],Tags:["stellarity.eol","stellarity.eol.phase_1"],Invulnerable:1b,Attributes:[{Name:"generic.armor",Base:12d},{Name:"generic.armor_toughness",Base:6d},{Name:"generic.max_health",Base:500d}],HandItems:[{id:"totem_of_undying",Count:1b}],HandDropChances:[0f],Health:500f,DeathLootTable:""}

# Armor Stand for the model
execute if predicate stellarity:mobs/eol/is_daytime run summon armor_stand ~ ~-1.5 ~ {ArmorItems:[{id:"minecraft:leather_boots",tag:{Damage:0,display:{color:3847130}},Count:1b},{id:"minecraft:leather_leggings",tag:{Damage:0,display:{color:16765255}},Count:1b},{id:"minecraft:leather_chestplate",tag:{Damage:0,display:{color:16765255}},Count:1b},{id:"minecraft:player_head",tag:{SkullOwner: {Id: [I; 27748125, 144067456, -1274466997, -1657885897], Properties: {textures: [{Value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTZjNzA1ZDhkZTc4ZTZiMDdjNjdiMTVlNDRiM2NlY2VlNDM0OWZmMTJlODFlNWU0NzdiYWU2YjYyZDI2OGJmIn19fQ=="}]}}},Count:1b}],Tags:["stellarity.eol.as"],Marker:1b,Invisible:0b,ShowArms:1b,NoGravity:1b,NoBasePlate:1b}

execute unless predicate stellarity:mobs/eol/is_daytime run summon armor_stand ~ ~-1.5 ~ {ArmorItems:[{id:"minecraft:leather_boots",tag:{Damage:0,display:{color:3847130}},Count:1b},{id:"minecraft:leather_leggings",tag:{Damage:0,display:{color:13061821}},Count:1b},{id:"minecraft:leather_chestplate",tag:{Damage:0,display:{color:13061821}},Count:1b},{id:"minecraft:player_head",tag:{SkullOwner: {Id: [I; 27748125, 144067456, -1274466997, -1657885897], Properties: {textures: [{Value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTZjNzA1ZDhkZTc4ZTZiMDdjNjdiMTVlNDRiM2NlY2VlNDM0OWZmMTJlODFlNWU0NzdiYWU2YjYyZDI2OGJmIn19fQ=="}]}}},Count:1b}],Tags:["stellarity.eol.as"],Marker:1b,Invisible:0b,ShowArms:1b,NoGravity:1b,NoBasePlate:1b}

# Rotate the armor stand to face the nearest player
execute as @e[type=vindicator,limit=1,sort=nearest,tag=stellarity.eol] at @s facing entity @p eyes run tp @s ~ ~ ~ ~ ~
scoreboard players set @e[type=vindicator,limit=1,sort=nearest,tag=stellarity.eol] stellarity.eol.attack_cooldown 0

execute as @e[type=vindicator,limit=1,sort=nearest,tag=stellarity.eol] if predicate stellarity:mobs/eol/is_daytime run tag @s add stellarity.eol.full_daytime
