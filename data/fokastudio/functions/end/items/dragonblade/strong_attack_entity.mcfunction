execute anchored eyes run particle explosion ^ ^ ^ 0 0 0 0 1 force
execute anchored feet run particle dragon_breath ^ ^ ^ 0 0 0 0.07 40 normal

execute anchored feet run particle shriek 0 ^ ^ ^ 0 0 0 1 1 normal
execute anchored feet run particle shriek 5 ^ ^ ^ 0 0 0 1 1 normal
execute anchored feet run particle shriek 10 ^ ^ ^ 0 0 0 1 1 normal
execute anchored feet run particle shriek 15 ^ ^ ^ 0 0 0 1 1 normal
execute anchored feet run particle shriek 20 ^ ^ ^ 0 0 0 1 1 normal

playsound minecraft:entity.ender_dragon.growl master @a ~ ~ ~ 0.25
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 1.1

# Effect IDs
# 18 - Weakness
# 20 - Wither
# 33 - Darkness
execute anchored feet run summon area_effect_cloud ~ ~ ~ {Duration:169,DurationOnUse:0,Particle:"witch",Radius:0.56f,RadiusPerTick:0.013f,Effects:[{Id:20,Duration:60,ShowParticles:true,Ambient:true,ShowIcon:true,Amplifier:1},{Id:33,Duration:30,ShowParticles:true,Ambient:true,ShowIcon:true},{Id:18,Duration:40,ShowParticles:true,Ambient:true,ShowIcon:true,Amplifier:2}]}
