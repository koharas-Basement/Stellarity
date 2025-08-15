summon allay ~ ~ ~ {Brain:{memories:{}},Tags:["stellarity.shulking","smithed.entity","smithed.strict"],Invulnerable:true, attributes:[{id:"max_health",base:1000},{base:4,id:"scale"}],Health:1000,HasVisualFire:false, active_effects:[{id:"invisibility",duration:1000000000,show_particles:false}],data:{"stellarity:shulking_rods":[]}, \
Passengers:[{id:"shulker", NoAI:true, Tags:["stellarity.shulking.body","smithed.entity","smithed.strict"],attributes:[{id:"minecraft:scale",base:3},{id:"follow_range",base:128},{id:"max_health",base:500}]}] \
}

execute as @n[type=allay,tag=stellarity.shulking,distance=..5] at @s run function stellarity:entity/shulking/init/allay
execute as @n[type=shulker,tag=stellarity.shulking.body,distance=..5] at @s run function stellarity:entity/shulking/init/shulker
