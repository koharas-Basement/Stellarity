data merge entity @s {Fixed:true,Invisible:1b,ItemRotation:0,ItemDropChance:0f}

tag @s add stellarity.porta_altar.placed

summon marker ~ ~1.25 ~ {Tags:["stellarity.marker","stellarity.altar_of_accursed","stellarity.aota_activated","stellarity.porta_altar.stationary","stellarity.porta_altar"]}

summon item_display ~ ~ ~ {Tags:["stellarity.porta_altar.stationary"],item:{id:"stick",count:1,components:{item_model:"stellarity:_util/porta_altar"}},transformation:[1.001f,0f,0f,0f,0f,1.001f,0f,0f,0f,0f,1.001f,0f,0f,0f,0f,1f],brightness:{block:15,sky:15}}
