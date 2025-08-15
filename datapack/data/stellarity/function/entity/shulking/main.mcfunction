execute unless data entity @s Passengers[0] run function stellarity:entity/shulking/death/check with entity @s data."stellarity:owner"

# rotate the rods
  scoreboard players add @s stellarity.misc4 3
  execute if score @s stellarity.misc4 matches 360.. run scoreboard players remove @s stellarity.misc4 360
  execute store result storage stellarity:temp shulking_rods.rotation int 1 run scoreboard players get @s stellarity.misc4


function stellarity:entity/shulking/rods/rotate with storage stellarity:temp shulking_rods
