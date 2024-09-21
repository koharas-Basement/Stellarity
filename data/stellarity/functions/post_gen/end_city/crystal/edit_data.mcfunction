data merge entity @s {Glowing:1b,ShowBottom:1b,Invulnerable:1b}

summon interaction ~ ~-0.001 ~ {Tags:["stellarity.end_city.crystal"],width:2.001f,height:2.002f,response:1b}
summon marker ~ ~ ~ {Tags:["stellarity.end_city.crystal","stellarity.marker"]}

tag @s add stellarity.end_city.crystal

team join stellarity.purple_glow @s
