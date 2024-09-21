data modify storage stellarity:temp villager.trades append value {maxUses:5,rewardExp:1b,priceMultiplier:0.2,demand:5,specialPrice:0,buy:{id:"emerald",Count:6,tag:{}},buyB:{id:"air",Count:1,tag:{}},sell:{id:"saddle",Count:1,tag:{}}}

data modify storage stellarity:temp villager.trades append value {maxUses:12,rewardExp:1b,priceMultiplier:0.05,demand:12,specialPrice:0,buy:{id:"leather",Count:10,tag:{}},buyB:{id:"air",Count:1,tag:{}},sell:{id:"emerald",Count:2,tag:{}}}

data modify storage stellarity:temp villager.trades append value {maxUses:12,rewardExp:1b,priceMultiplier:0.05,demand:12,specialPrice:0,buy:{id:"flint",Count:18,tag:{}},buyB:{id:"air",Count:1,tag:{}},sell:{id:"emerald",Count:1,tag:{}}}

scoreboard players set in stellarity.misc 1
scoreboard players set in1 stellarity.misc 2
function kohara:rng/range
execute if score #trade stellarity.misc matches 1 run data modify storage stellarity:temp villager.trades append value {maxUses:12,rewardExp:1b,priceMultiplier:0.05,demand:12,specialPrice:0,buy:{id:"emerald",Count:28,tag:{}},buyB:{id:"air",Count:1,tag:{}},sell:{id:"raiser_armor_trim_smithing_template",Count:1,tag:{}}}
execute if score #trade stellarity.misc matches 2 run data modify storage stellarity:temp villager.trades append value {maxUses:12,rewardExp:1b,priceMultiplier:0.05,demand:12,specialPrice:0,buy:{id:"emerald",Count:28,tag:{}},buyB:{id:"air",Count:1,tag:{}},sell:{id:"shaper_armor_trim_smithing_template",Count:1,tag:{}}}

scoreboard players set in stellarity.misc 1
scoreboard players set in1 stellarity.misc 2
function kohara:rng/range
execute if score #trade stellarity.misc matches 1 run data modify storage stellarity:temp villager.trades append value {maxUses:12,rewardExp:1b,priceMultiplier:0.05,demand:12,specialPrice:0,buy:{id:"emerald",Count:28,tag:{}},buyB:{id:"air",Count:1,tag:{}},sell:{id:"host_armor_trim_smithing_template",Count:1,tag:{}}}
execute if score #trade stellarity.misc matches 2 run data modify storage stellarity:temp villager.trades append value {maxUses:12,rewardExp:1b,priceMultiplier:0.05,demand:12,specialPrice:0,buy:{id:"emerald",Count:28,tag:{}},buyB:{id:"air",Count:1,tag:{}},sell:{id:"wayfinder_armor_trim_smithing_template",Count:1,tag:{}}}
