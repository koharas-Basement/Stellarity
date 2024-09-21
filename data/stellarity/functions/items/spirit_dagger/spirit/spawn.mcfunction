summon armor_stand ~ ~-1 ~ {NoBasePlate:1b,NoGravity:1b,Small:0b,ArmorItems:[{},{},{},{id:"player_head",Count:1b,tag:{SkullOwner:{Id:[I;-720406724,2041532139,-1833552933,1765646358],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOThmNzgyOWY4MzUwZGVhNzQwZWQyNjNmNWZlNmJhMGNhZGY0MmJiNmEyMThjYTk5MWUxMDYxOTllNzFjYzhlNSJ9fX0="}]}}}}],HandItems:[{},{}],Tags:["stellarity.spirit_dagger.spirit"],Invisible:1b,Invulnerable:1b,Marker:1b,DisabledSlots:4144959,Glowing:1b}
team join stellarity.spirit_glow @e[type=armor_stand,tag=stellarity.spirit_dagger.spirit,limit=1,sort=nearest]

summon interaction ~ ~ ~ {width:1.35f,height:1.35f,Tags:["stellarity.spirit_dagger.spirit"]}

particle explosion ~ ~.5 ~ 0 0 0 0 1 force
playsound minecraft:entity.shulker_bullet.hurt player @a[distance=0..] ~ ~ ~ 1 1
