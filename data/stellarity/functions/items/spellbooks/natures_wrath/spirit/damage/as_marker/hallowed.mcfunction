particle end_rod ~ ~ ~ 0 0 0 0.1 7 normal
particle firework ~ ~ ~ 0 0 0 0.1 7 normal
playsound entity.allay.hurt neutral @a ~ ~ ~ 1 1
playsound minecraft:entity.shulker_bullet.hurt neutral @a ~ ~ ~ 1 1

summon firework_rocket ~ ~ ~ {LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",Count:1b,tag:{stellarity.prismatic_blast:1b,Fireworks:{Explosions:[{Type:0,Trail:0,Flicker:1,Colors:[I;16714241,9375743,3538723,16772661,2399487,15679743,16745006]}],Flight:1}}}}

kill @s
