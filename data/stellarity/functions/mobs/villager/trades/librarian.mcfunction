data modify storage stellarity:temp villager_trades append value {maxUses:12,rewardExp:1b,priceMultiplier:0.05,demand:12,specialPrice:0,buy:{id:"emerald",Count:1,tag:{}},buyB:{id:"air",Count:1,tag:{}},sell:{id:"lantern",Count:2,tag:{}}}

data modify storage stellarity:temp villager_trades append value {maxUses:12,rewardExp:1b,priceMultiplier:0.05,demand:12,specialPrice:0,buy:{id:"emerald",Count:4,tag:{}},buyB:{id:"air",Count:1,tag:{}},sell:{id:"writable_book",Count:1,tag:{}}}

data modify storage stellarity:temp villager_trades append value {maxUses:12,rewardExp:1b,priceMultiplier:0.05,demand:12,specialPrice:0,buy:{id:"paper",Count:18,tag:{}},buyB:{id:"air",Count:1,tag:{}},sell:{id:"emerald",Count:1,tag:{}}}

data modify storage stellarity:temp villager_trades append value {maxUses:12,rewardExp:1b,priceMultiplier:0.05,demand:12,specialPrice:0,buy:{id:"book",Count:3,tag:{}},buyB:{id:"air",Count:1,tag:{}},sell:{id:"emerald",Count:1,tag:{}}}

data modify storage stellarity:temp villager_trades append value {maxUses:12,rewardExp:1b,priceMultiplier:0.05,demand:12,specialPrice:0,buy:{id:"emerald",Count:5,tag:{}},buyB:{id:"air",Count:1,tag:{}},sell:{id:"clock",Count:1,tag:{}}}

data modify storage stellarity:temp villager_trades append value {maxUses:12,rewardExp:1b,priceMultiplier:0.05,demand:12,specialPrice:0,buy:{id:"emerald",Count:4,tag:{}},buyB:{id:"air",Count:1,tag:{}},sell:{id:"compass",Count:1,tag:{}}}

data modify storage stellarity:temp villager_trades append value {maxUses:12,rewardExp:1b,priceMultiplier:0.05,demand:12,specialPrice:0,buy:{id:"emerald",Count:15,tag:{}},buyB:{id:"air",Count:1,tag:{}},sell:{id:"name_tag",Count:1,tag:{}}}

data modify storage stellarity:temp villager_trades append value {maxUses:12,rewardExp:1b,priceMultiplier:0.05,demand:12,specialPrice:0,buy:{id:"emerald",Count:7,tag:{}},buyB:{id:"air",Count:1,tag:{}},sell:{id:"bookshelf",Count:1,tag:{}}}

data modify storage stellarity:temp villager_trades append value {maxUses:12,rewardExp:1b,priceMultiplier:0.05,demand:12,specialPrice:0,buy:{id:"emerald",Count:45,tag:{}},buyB:{id:"air",Count:1,tag:{}},sell:{id:"enchanting_table",Count:1,tag:{}}}

scoreboard players set in stellarity.misc 1
scoreboard players set in1 stellarity.misc 3
function kohara:rng/range

execute if score out stellarity.misc matches 1 run data modify storage stellarity:temp villager_trades append value {maxUses:1,rewardExp:1b,priceMultiplier:0.5,demand:1,specialPrice:0,buy:{id:"enchanted_book",Count:1,tag:{}},buyB:{id:"emerald",Count:64,tag:{}},sell:{id:"knowledge_book",Count:1,tag:{}}}
execute if score out stellarity.misc matches 1 run loot spawn ~ ~-5 ~ loot stellarity:items/spellbooks/conveyance
execute if score out stellarity.misc matches 1 positioned ~ ~-5 ~ run data modify storage stellarity:temp villager_trades[-1].sell.tag set from entity @e[type=item,limit=1,sort=nearest] Item.tag
execute if score out stellarity.misc matches 1 positioned ~ ~-5 ~ run kill @e[type=item,limit=1,sort=nearest]

execute if score out stellarity.misc matches 2 run data modify storage stellarity:temp villager_trades append value {maxUses:1,rewardExp:1b,priceMultiplier:0.5,demand:1,specialPrice:0,buy:{id:"enchanted_book",Count:1,tag:{}},buyB:{id:"emerald",Count:64,tag:{}},sell:{id:"knowledge_book",Count:1,tag:{}}}
execute if score out stellarity.misc matches 2 run loot spawn ~ ~-5 ~ loot stellarity:items/spellbooks/light
execute if score out stellarity.misc matches 2 positioned ~ ~-5 ~ run data modify storage stellarity:temp villager_trades[-1].sell.tag set from entity @e[type=item,limit=1,sort=nearest] Item.tag
execute if score out stellarity.misc matches 2 positioned ~ ~-5 ~ run kill @e[type=item,limit=1,sort=nearest]

execute if score out stellarity.misc matches 3 run data modify storage stellarity:temp villager_trades append value {maxUses:1,rewardExp:1b,priceMultiplier:0.5,demand:1,specialPrice:0,buy:{id:"enchanted_book",Count:1,tag:{}},buyB:{id:"emerald",Count:64,tag:{}},sell:{id:"knowledge_book",Count:1,tag:{}}}
execute if score out stellarity.misc matches 3 run loot spawn ~ ~-5 ~ loot stellarity:items/spellbooks/updraft
execute if score out stellarity.misc matches 3 positioned ~ ~-5 ~ run data modify storage stellarity:temp villager_trades[-1].sell.tag set from entity @e[type=item,limit=1,sort=nearest] Item.tag
execute if score out stellarity.misc matches 3 positioned ~ ~-5 ~ run kill @e[type=item,limit=1,sort=nearest]

scoreboard players set #nature stellarity.misc 0
execute if predicate kohara:chance/50percent run scoreboard players set #nature stellarity.misc 1

execute if score #nature stellarity.misc matches 1 run data modify storage stellarity:temp villager_trades append value {maxUses:1,rewardExp:1b,priceMultiplier:0.5,demand:1,specialPrice:0,buy:{id:"enchanted_book",Count:1,tag:{}},buyB:{id:"oak_sapling",Count:12,tag:{}},sell:{id:"knowledge_book",Count:1,tag:{}}}
execute if score #nature stellarity.misc matches 1 run loot spawn ~ ~-5 ~ loot stellarity:items/spellbooks/natures_wrath
execute if score #nature stellarity.misc matches 1 positioned ~ ~-5 ~ run data modify storage stellarity:temp villager_trades[-1].sell.tag set from entity @e[type=item,limit=1,sort=nearest] Item.tag
execute if score #nature stellarity.misc matches 1 positioned ~ ~-5 ~ run kill @e[type=item,limit=1,sort=nearest]