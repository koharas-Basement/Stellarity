$summon item_display ~ ~1.5 ~ {NoGravity:true,Tags:["stellarity.entity.fluffy_hammer"],item:{id:"acacia_boat",components:{custom_data:{Owner:$(owner)}}}, Passengers:[{id:"item_display",Tags:["stellarity.entity.fluffy_hammer_display"], item:$(item), NoGravity:true, transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],scale:[1.5,1.5,1.5],right_rotation:[0f,0f,0f,1f]}}],transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],scale:[0,0,0],right_rotation:[0f,0f,0f,1f]}}
rotate @n[type=item_display,tag=stellarity.entity.fluffy_hammer] ~ ~
rotate @n[type=item_display,tag=stellarity.entity.fluffy_hammer_display] ~ 0

scoreboard players set @n[tag=stellarity.entity.fluffy_hammer_display] stellarity.misc 0
