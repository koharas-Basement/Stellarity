$title @a actionbar "Still alive! $(UUID)"
$execute if entity @n[type=vindicator,nbt={UUID:$(UUID)}] run tp @s @n[type=vindicator,nbt={UUID:$(UUID)}]

$execute unless entity @n[type=vindicator,nbt={UUID:$(UUID)}] run say glitched!

$execute unless entity @n[type=vindicator,nbt={UUID:$(UUID)}] run summon minecraft:vindicator ~ ~ ~ {NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Silent:1b,active_effects:[{id:"minecraft:invisibility",duration:-1,show_particles:0b}],Tags:["stellarity.eol","kohara.boss","stellarity.eol.death_animation","smithed.entity","stellarity.eol.can_attack"],Invulnerable:1b,attributes:[{id:"armor",base:12d},{id:"armor_toughness",base:4d},{id:"max_health",base:500d}],equipment:{mainhand:{id:"minecraft:totem_of_undying",count:1},offhand:{id:"minecraft:totem_of_undying",count:1b}},drop_chances:{mainhand:0.0,offhand:0.0}, Health:5f,DeathLootTable:"",UUID:$(UUID)}

