playsound stellarity:item.tamaris.rave player @a[distance=0..] ~ ~1.05 ~ 1.6 1

effect give @s glowing
team join stellarity.rave_glow @s

schedule function stellarity:items/tamaris/execute/animation/rave_post 1s append

summon firework_rocket ~ ~1 ~ {Silent:1b,LifeTime:20,FireworksItem:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:4,Flicker:1,Trail:1,Colors:[I;11743532,2437522,8073150,4312372,14602026,15435844],FadeColors:[I;11743532,2437522,8073150,4312372,14602026,15435844]},{Type:4,Flicker:1,Trail:1,Colors:[I;11743532,2437522,8073150,4312372,14602026,15435844],FadeColors:[I;11743532,2437522,8073150,4312372,14602026,15435844]},{Type:4,Flicker:1,Trail:1,Colors:[I;11743532,2437522,8073150,4312372,14602026,15435844],FadeColors:[I;11743532,2437522,8073150,4312372,14602026,15435844]}],Flight:0}}}}
