stopsound @a[distance=..32] * entity.glow_item_frame.place

# fail to place cuz entity there
  execute align xyz if entity @e[dx=0,dy=0,dz=0,type=!#stellarity:place_block_hitbox] run scoreboard players set @s stellarity.misc 1
  execute unless block ~ ~ ~ #replaceable run scoreboard players set @s stellarity.misc 1


execute if score @s stellarity.misc matches 1 run function stellarity:block/place/fail with entity @s data."stellarity:block"
execute if block ~ ~ ~ #replaceable unless score @s stellarity.misc matches 1 run function stellarity:block/place/success with entity @s data."stellarity:block"


kill @s
