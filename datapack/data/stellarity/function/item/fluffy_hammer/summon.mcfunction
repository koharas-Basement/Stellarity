$summon item_display ~ ~1.5 ~ {Invulnerable:true,NoGravity:true,Tags:["stellarity.fluffy_hammer","smithed.entity","smithed.strict"],item:{id:"acacia_boat",components:{custom_data:{Owner:$(owner)}}}, Passengers:[{id:"item_display",Invulnerable:true,Tags:["stellarity.fluffy_hammer.display","smithed.entity","smithed.strict"], item:$(item), NoGravity:true, transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],scale:[1.5,1.5,1.5],right_rotation:[0f,0f,0f,1f]}}],transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],scale:[0,0,0],right_rotation:[0f,0f,0f,1f]}}
execute positioned ~ ~1.5 ~ run rotate @n[type=item_display,tag=stellarity.fluffy_hammer] ~ ~
execute positioned ~ ~1.5 ~ run rotate @n[type=item_display,tag=stellarity.fluffy_hammer.display] ~ 0


playsound stellarity:item.fluffy_hammer.throw player @a[distance=..16] ~ ~ ~

scoreboard players set @n[tag=stellarity.fluffy_hammer.display] stellarity.misc 0

execute unless entity @s[gamemode=creative] positioned ~ ~1.5 ~ as @n[type=item_display,tag=stellarity.fluffy_hammer.display] run function stellarity:item/fluffy_hammer/decrease_durability

