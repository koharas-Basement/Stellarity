execute as @e[type=area_effect_cloud,tag=stellarity.pandoras_barrel.aec,limit=1,sort=nearest] at @s run function stellarity:items/pandoras_barrel/as_aec

execute if score @s stellarity.items.pandoras_barrel.animation matches 1 run function stellarity:items/pandoras_barrel/helmet_replace

execute positioned ~ ~-1.7 ~ run function stellarity:items/pandoras_barrel/animation/move

execute if score @s stellarity.items.pandoras_barrel.animation matches 0..10 run function stellarity:items/pandoras_barrel/animation/end_rod_spiral/1
execute if score @s stellarity.items.pandoras_barrel.animation matches 11..20 run function stellarity:items/pandoras_barrel/animation/end_rod_spiral/2
execute if score @s stellarity.items.pandoras_barrel.animation matches 21..30 run function stellarity:items/pandoras_barrel/animation/end_rod_spiral/3
execute if score @s stellarity.items.pandoras_barrel.animation matches 31..40 run function stellarity:items/pandoras_barrel/animation/end_rod_spiral/4
execute if score @s stellarity.items.pandoras_barrel.animation matches 41..50 run function stellarity:items/pandoras_barrel/animation/end_rod_spiral/5
execute if score @s stellarity.items.pandoras_barrel.animation matches 51..60 run function stellarity:items/pandoras_barrel/animation/end_rod_spiral/6
execute if score @s stellarity.items.pandoras_barrel.animation matches 61..70 run function stellarity:items/pandoras_barrel/animation/end_rod_spiral/7
execute if score @s stellarity.items.pandoras_barrel.animation matches 71..80 run function stellarity:items/pandoras_barrel/animation/end_rod_spiral/8
execute if score @s stellarity.items.pandoras_barrel.animation matches 81..90 run function stellarity:items/pandoras_barrel/animation/end_rod_spiral/9
execute if score @s stellarity.items.pandoras_barrel.animation matches 91..100 run function stellarity:items/pandoras_barrel/animation/end_rod_spiral/10
execute if score @s stellarity.items.pandoras_barrel.animation matches 101..110 run function stellarity:items/pandoras_barrel/animation/end_rod_spiral/11
execute if score @s stellarity.items.pandoras_barrel.animation matches 111..120 run function stellarity:items/pandoras_barrel/animation/end_rod_spiral/12
execute if score @s stellarity.items.pandoras_barrel.animation matches 121..130 run function stellarity:items/pandoras_barrel/animation/end_rod_spiral/13
execute if score @s stellarity.items.pandoras_barrel.animation matches 131..140 run function stellarity:items/pandoras_barrel/animation/end_rod_spiral/14
execute if score @s stellarity.items.pandoras_barrel.animation matches 141..150 run function stellarity:items/pandoras_barrel/animation/end_rod_spiral/15
execute if score @s stellarity.items.pandoras_barrel.animation matches 151..160 run function stellarity:items/pandoras_barrel/animation/end_rod_spiral/16
execute if score @s stellarity.items.pandoras_barrel.animation matches 161..170 run function stellarity:items/pandoras_barrel/animation/end_rod_spiral/17
execute if score @s stellarity.items.pandoras_barrel.animation matches 171..180 run function stellarity:items/pandoras_barrel/animation/end_rod_spiral/18
execute if score @s stellarity.items.pandoras_barrel.animation matches 181..190 run function stellarity:items/pandoras_barrel/animation/end_rod_spiral/19
execute if score @s stellarity.items.pandoras_barrel.animation matches 191..200 run function stellarity:items/pandoras_barrel/animation/end_rod_spiral/20

# There was slightly more efficient method for that :D
execute if score @s stellarity.items.pandoras_barrel.animation matches 0..100 run function stellarity:items/pandoras_barrel/animation/harp
execute if score @s stellarity.items.pandoras_barrel.animation matches 0..100 run function stellarity:items/pandoras_barrel/animation/firework

# Growing particles and TNT hissing
execute if score @s stellarity.items.pandoras_barrel.animation matches 120 run function stellarity:items/pandoras_barrel/animation/growing_dust/1
execute if score @s stellarity.items.pandoras_barrel.animation matches 130 run function stellarity:items/pandoras_barrel/animation/growing_dust/2
execute if score @s stellarity.items.pandoras_barrel.animation matches 140 run function stellarity:items/pandoras_barrel/animation/growing_dust/3
execute if score @s stellarity.items.pandoras_barrel.animation matches 150 run function stellarity:items/pandoras_barrel/animation/growing_dust/4
execute if score @s stellarity.items.pandoras_barrel.animation matches 160 run function stellarity:items/pandoras_barrel/animation/growing_dust/5

execute if score @s stellarity.items.pandoras_barrel.animation matches 170 run particle enchant ~ ~1 ~ 0 0 0 5 25 force
execute if score @s stellarity.items.pandoras_barrel.animation matches 170 run playsound minecraft:entity.evoker.prepare_attack block @a[distance=0..] ~ ~ ~ 1 1

# That was a lot of functions for just particles and sounds...

execute if score @s stellarity.items.pandoras_barrel.animation matches 200.. run function stellarity:items/pandoras_barrel/animation/finish

scoreboard players add @s stellarity.items.pandoras_barrel.animation 1
