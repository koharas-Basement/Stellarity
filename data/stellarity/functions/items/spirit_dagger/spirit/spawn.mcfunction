summon armor_stand ~ ~-1 ~ {NoBasePlate:1b,NoGravity:1b,Small:0b,ArmorItems:[{},{},{},{id:"player_head",Count:1b,tag:{SkullOwner:{Id:[I;1681055649,1967867780,-1559573219,-1855065408],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjY3ZDVlZGEyYzAyNWEzZTJmYjdlZmRiZjIwMGU4YjZjNmY2M2QzNTY1YmVkNzc1ODI2NGU0ZjdjZDM3ZDdlNiJ9fX0="}]}}}}],HandItems:[{},{}],Tags:["stellarity.spirit_dagger.spirit"],Invisible:1b,Invulnerable:1b,Marker:1b,DisabledSlots:4144959,Glowing:1b}
team join stellarity.purple_glow @e[type=armor_stand,tag=stellarity.spirit_dagger.spirit,limit=1,sort=nearest]

summon interaction ~ ~ ~ {width:1.35f,height:1.35f,Tags:["stellarity.spirit_dagger.spirit"]}
summon marker ~ ~ ~ {Tags:["stellarity.spirit_dagger.spirit","stellarity.marker"]}

particle explosion ~ ~.5 ~ 0 0 0 0 1 force
playsound minecraft:entity.shulker_bullet.hurt player @a[distance=0..] ~ ~ ~ 1 1
