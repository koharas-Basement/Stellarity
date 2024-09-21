# Moved from some Far End function I cannot remember
function far_end:structures/exit_portal/activated/generate
execute if score @s fe.variable matches 1 run setblock ~ ~3 ~ minecraft:dragon_egg
execute if score @s fe.variable matches ..20 run tag @s add fe.generate_gateway
tag @s remove fe.activated

# Drops Ender Insignia and makes it slowly glide downwards
# The gilde took way longer than the code for the item
execute as @e[type=marker,tag=foka.dragon_marker] at @s run summon item ~ ~ ~ {NoGravity:1b,Glowing:1b,Age:-32768,PickupDelay:100,Motion:[0.0,-0.6,0.0],Item:{id:"minecraft:amethyst_shard",Count:1b,tag:{display:{Name:'{"translate":"Ender Insignia","color":"#A25AFF","italic":false}',Lore:['{"translate":"Greatly increases life regen when","color":"gray","italic":false}','{"translate":"held and not moving","color":"gray","italic":false}','{"text":"The Dragon\'s Power is withing your hands","font":"illageralt","color":"dark_purple","italic":false}']},CustomModelData:90000,foka.special_item:"ender_insignia",Enchantments:[{}]}}}

# Make it glow purplish
team join foka.purple_glow @e[type=item,limit=1,sort=nearest]

kill @e[type=marker,tag=foka.dragon_marker]
scoreboard players reset @s fe.timer
