execute as @e[distance=..3,type=!#fokastudio:end/sharanga_invalid_targets] at @s run summon spectral_arrow ~ ~3.5 ~ {Duration:60,Motion:[0.0,-5.0,0.0],life:1200,Tags:["foka.sharanga_explosion"]}
execute as @e[type=spectral_arrow,distance=..5,tag=foka.sharanga_explosion] run data modify entity @s damage set from entity @e[type=spectral_arrow,limit=1,sort=nearest,tag=foka.spectral_bolt] damage
execute as @e[type=spectral_arrow,distance=..5,tag=foka.sharanga_explosion] run data modify entity @s Owner set from entity @e[type=spectral_arrow,limit=1,sort=nearest,tag=foka.spectral_bolt] Owner
