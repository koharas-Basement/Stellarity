scoreboard players set in stellarity.misc 1
scoreboard players set in1 stellarity.misc 3
function stellarity:utils/rng/range
execute if score out stellarity.misc matches 1 run data modify storage stellarity:temp villager_trades append value {maxUses:16,rewardExp:1b,priceMultiplier:0.05,demand:16,specialPrice:0,buy:{id:"rotten_flesh",Count:24,tag:{}},buyB:{id:"air",Count:1,tag:{}},sell:{id:"emerald",Count:2,tag:{}}}
execute if score out stellarity.misc matches 2 run data modify storage stellarity:temp villager_trades append value {maxUses:16,rewardExp:1b,priceMultiplier:0.05,demand:16,specialPrice:0,buy:{id:"bone",Count:24,tag:{}},buyB:{id:"air",Count:1,tag:{}},sell:{id:"emerald",Count:2,tag:{}}}
execute if score out stellarity.misc matches 3 run data modify storage stellarity:temp villager_trades append value {maxUses:16,rewardExp:1b,priceMultiplier:0.05,demand:16,specialPrice:0,buy:{id:"slime_ball",Count:14,tag:{}},buyB:{id:"air",Count:1,tag:{}},sell:{id:"emerald",Count:2,tag:{}}}

data modify storage stellarity:temp villager_trades append value {maxUses:12,rewardExp:1b,priceMultiplier:0.05,demand:12,specialPrice:0,buy:{id:"emerald",Count:2,tag:{}},buyB:{id:"air",Count:1,tag:{}},sell:{id:"lapis_lazuli",Count:3,tag:{}}}
data modify storage stellarity:temp villager_trades append value {maxUses:12,rewardExp:1b,priceMultiplier:0.05,demand:12,specialPrice:0,buy:{id:"emerald",Count:6,tag:{}},buyB:{id:"air",Count:1,tag:{}},sell:{id:"glowstone",Count:2,tag:{}}}
data modify storage stellarity:temp villager_trades append value {maxUses:12,rewardExp:1b,priceMultiplier:0.05,demand:12,specialPrice:0,buy:{id:"ender_pearl",Count:4,tag:{}},buyB:{id:"air",Count:1,tag:{}},sell:{id:"emerald",Count:1,tag:{}}}

scoreboard players set in stellarity.misc 1
scoreboard players set in1 stellarity.misc 2
function stellarity:utils/rng/range
execute if score out stellarity.misc matches 1 run data modify storage stellarity:temp villager_trades append value {maxUses:12,rewardExp:1b,priceMultiplier:0.05,demand:12,specialPrice:0,buy:{id:"emerald",Count:3,tag:{}},buyB:{id:"air",Count:1,tag:{}},sell:{id:"nether_wart",Count:1,tag:{}}}
execute if score out stellarity.misc matches 2 run data modify storage stellarity:temp villager_trades append value {maxUses:12,rewardExp:1b,priceMultiplier:0.05,demand:12,specialPrice:0,buy:{id:"emerald",Count:4,tag:{}},buyB:{id:"air",Count:1,tag:{}},sell:{id:"glowstone_dust",Count:3,tag:{}}}

data modify storage stellarity:temp villager_trades append value {maxUses:12,rewardExp:1b,priceMultiplier:0.05,demand:12,specialPrice:0,buy:{id:"gold_ingot",Count:5,tag:{}},buyB:{id:"air",Count:1,tag:{}},sell:{id:"emerald",Count:2,tag:{}}}

scoreboard players set in stellarity.misc 1
scoreboard players set in1 stellarity.misc 2
function stellarity:utils/rng/range

execute if score out stellarity.misc matches 1 run data modify storage stellarity:temp villager_trades append value {maxUses:6,rewardExp:1b,priceMultiplier:0.5,demand:6,specialPrice:0,buy:{id:"potion",Count:1,tag:{Potion:"minecraft:fire_resistance"}},buyB:{id:"cooked_cod",Count:2,tag:{}},sell:{id:"potion",Count:1,tag:{}}}
execute if score out stellarity.misc matches 1 run loot spawn ~ ~-5 ~ loot stellarity:items/fish/flarefin_koi
execute if score out stellarity.misc matches 1 positioned ~ ~-5 ~ run data modify storage stellarity:temp villager_trades[-1].buyB.tag set from entity @e[type=item,limit=1,sort=nearest] Item.tag
execute if score out stellarity.misc matches 1 positioned ~ ~-5 ~ run kill @e[type=item,limit=1,sort=nearest]
execute if score out stellarity.misc matches 1 run loot spawn ~ ~-5 ~ loot stellarity:items/potions/infernal_concoction
execute if score out stellarity.misc matches 1 positioned ~ ~-5 ~ run data modify storage stellarity:temp villager_trades[-1].sell.tag set from entity @e[type=item,limit=1,sort=nearest] Item.tag
execute if score out stellarity.misc matches 1 positioned ~ ~-5 ~ run kill @e[type=item,limit=1,sort=nearest]

execute if score out stellarity.misc matches 2 run data modify storage stellarity:temp villager_trades append value {maxUses:6,rewardExp:1b,priceMultiplier:0.5,demand:6,specialPrice:0,buy:{id:"potion",Count:1,tag:{Potion:"minecraft:long_water_breathing"}},buyB:{id:"cooked_cod",Count:2,tag:{}},sell:{id:"potion",Count:1,tag:{}}}
execute if score out stellarity.misc matches 2 run loot spawn ~ ~-5 ~ loot stellarity:items/fish/bubblefish
execute if score out stellarity.misc matches 2 positioned ~ ~-5 ~ run data modify storage stellarity:temp villager_trades[-1].buyB.tag set from entity @e[type=item,limit=1,sort=nearest] Item.tag
execute if score out stellarity.misc matches 2 positioned ~ ~-5 ~ run kill @e[type=item,limit=1,sort=nearest]
execute if score out stellarity.misc matches 2 run loot spawn ~ ~-5 ~ loot stellarity:items/potions/graceful_potion
execute if score out stellarity.misc matches 2 positioned ~ ~-5 ~ run data modify storage stellarity:temp villager_trades[-1].sell.tag set from entity @e[type=item,limit=1,sort=nearest] Item.tag
execute if score out stellarity.misc matches 2 positioned ~ ~-5 ~ run kill @e[type=item,limit=1,sort=nearest]


scoreboard players set in stellarity.misc 1
scoreboard players set in1 stellarity.misc 2
function stellarity:utils/rng/range

execute if score out stellarity.misc matches 1 run data modify storage stellarity:temp villager_trades append value {maxUses:6,rewardExp:1b,priceMultiplier:0.5,demand:6,specialPrice:0,buy:{id:"potion",Count:1,tag:{Potion:"minecraft:strong_strength"}},buyB:{id:"cooked_cod",Count:2,tag:{}},sell:{id:"potion",Count:1,tag:{}}}
execute if score out stellarity.misc matches 1 run loot spawn ~ ~-5 ~ loot stellarity:items/fish/crimson_tigerfish
execute if score out stellarity.misc matches 1 positioned ~ ~-5 ~ run data modify storage stellarity:temp villager_trades[-1].buyB.tag set from entity @e[type=item,limit=1,sort=nearest] Item.tag
execute if score out stellarity.misc matches 1 positioned ~ ~-5 ~ run kill @e[type=item,limit=1,sort=nearest]
execute if score out stellarity.misc matches 1 run loot spawn ~ ~-5 ~ loot stellarity:items/potions/strength_3
execute if score out stellarity.misc matches 1 positioned ~ ~-5 ~ run data modify storage stellarity:temp villager_trades[-1].sell.tag set from entity @e[type=item,limit=1,sort=nearest] Item.tag
execute if score out stellarity.misc matches 1 positioned ~ ~-5 ~ run kill @e[type=item,limit=1,sort=nearest]

execute if score out stellarity.misc matches 2 run data modify storage stellarity:temp villager_trades append value {maxUses:6,rewardExp:1b,priceMultiplier:0.5,demand:6,specialPrice:0,buy:{id:"potion",Count:1,tag:{Potion:"minecraft:strong_regeneration"}},buyB:{id:"cooked_cod",Count:2,tag:{}},sell:{id:"potion",Count:1,tag:{}}}
execute if score out stellarity.misc matches 2 run loot spawn ~ ~-5 ~ loot stellarity:items/fish/fleshy_piranha
execute if score out stellarity.misc matches 2 positioned ~ ~-5 ~ run data modify storage stellarity:temp villager_trades[-1].buyB.tag set from entity @e[type=item,limit=1,sort=nearest] Item.tag
execute if score out stellarity.misc matches 2 positioned ~ ~-5 ~ run kill @e[type=item,limit=1,sort=nearest]
execute if score out stellarity.misc matches 2 run loot spawn ~ ~-5 ~ loot stellarity:items/potions/regenerative_mix
execute if score out stellarity.misc matches 2 positioned ~ ~-5 ~ run data modify storage stellarity:temp villager_trades[-1].sell.tag set from entity @e[type=item,limit=1,sort=nearest] Item.tag
execute if score out stellarity.misc matches 2 positioned ~ ~-5 ~ run kill @e[type=item,limit=1,sort=nearest]


scoreboard players set in stellarity.misc 1
scoreboard players set in1 stellarity.misc 2
function stellarity:utils/rng/range

execute if score out stellarity.misc matches 1 run data modify storage stellarity:temp villager_trades append value {maxUses:6,rewardExp:1b,priceMultiplier:0.5,demand:6,specialPrice:0,buy:{id:"potion",Count:1,tag:{Potion:"minecraft:water"}},buyB:{id:"cooked_cod",Count:2,tag:{}},sell:{id:"potion",Count:1,tag:{}}}
execute if score out stellarity.misc matches 1 run loot spawn ~ ~-5 ~ loot stellarity:items/fish/frost_minnow
execute if score out stellarity.misc matches 1 positioned ~ ~-5 ~ run data modify storage stellarity:temp villager_trades[-1].buyB.tag set from entity @e[type=item,limit=1,sort=nearest] Item.tag
execute if score out stellarity.misc matches 1 positioned ~ ~-5 ~ run kill @e[type=item,limit=1,sort=nearest]
execute if score out stellarity.misc matches 1 run loot spawn ~ ~-5 ~ loot stellarity:items/potions/flask_of_frost
execute if score out stellarity.misc matches 1 positioned ~ ~-5 ~ run data modify storage stellarity:temp villager_trades[-1].sell.tag set from entity @e[type=item,limit=1,sort=nearest] Item.tag
execute if score out stellarity.misc matches 1 positioned ~ ~-5 ~ run kill @e[type=item,limit=1,sort=nearest]

execute if score out stellarity.misc matches 2 run data modify storage stellarity:temp villager_trades append value {maxUses:6,rewardExp:1b,priceMultiplier:0.5,demand:6,specialPrice:0,buy:{id:"potion",Count:1,tag:{}},buyB:{id:"cooked_cod",Count:2,tag:{}},sell:{id:"potion",Count:1,tag:{}}}
execute if score out stellarity.misc matches 2 run loot spawn ~ ~-5 ~ loot stellarity:items/potions/lifeforce_potion
execute if score out stellarity.misc matches 2 positioned ~ ~-5 ~ run data modify storage stellarity:temp villager_trades[-1].buy.tag set from entity @e[type=item,limit=1,sort=nearest] Item.tag
execute if score out stellarity.misc matches 2 positioned ~ ~-5 ~ run kill @e[type=item,limit=1,sort=nearest]
execute if score out stellarity.misc matches 2 run loot spawn ~ ~-5 ~ loot stellarity:items/fish/prismite
execute if score out stellarity.misc matches 2 positioned ~ ~-5 ~ run data modify storage stellarity:temp villager_trades[-1].buyB.tag set from entity @e[type=item,limit=1,sort=nearest] Item.tag
execute if score out stellarity.misc matches 2 positioned ~ ~-5 ~ run kill @e[type=item,limit=1,sort=nearest]
execute if score out stellarity.misc matches 2 run loot spawn ~ ~-5 ~ loot stellarity:items/potions/lifeforce_potion_2
execute if score out stellarity.misc matches 2 positioned ~ ~-5 ~ run data modify storage stellarity:temp villager_trades[-1].sell.tag set from entity @e[type=item,limit=1,sort=nearest] Item.tag
execute if score out stellarity.misc matches 2 positioned ~ ~-5 ~ run kill @e[type=item,limit=1,sort=nearest]
