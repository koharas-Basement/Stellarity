execute if entity @p[gamemode=!spectator,gamemode=!creative] as @p run function stellarity:items/sharanga/ammo_conservation

data merge entity @s {PierceLevel:127b,Tags:["stellarity.spectral_bolt"],NoGravity:1b,Duration:200,Silent:1b,pickup:0b}
