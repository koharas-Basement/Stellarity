execute positioned ~ ~ ~0.5 run summon wolf ~ ~ ~ {Tags:["stellarity.spirit_wolf"]}
execute positioned ~ ~ ~-0.5 run summon wolf ~ ~ ~ {Tags:["stellarity.spirit_wolf"]}
execute if score #upgrades stellarity.misc matches 3.. positioned ~-0.5 ~ ~ run summon wolf ~ ~ ~ {Tags:["stellarity.spirit_wolf"]}
execute if score #upgrades stellarity.misc matches 6.. positioned ~0.5 ~ ~ run summon wolf ~ ~ ~ {Tags:["stellarity.spirit_wolf"]}
execute if score #upgrades stellarity.misc matches 9.. positioned ~ ~ ~ run summon wolf ~ ~ ~ {Tags:["stellarity.spirit_wolf"]}

execute as @e[type=wolf,sort=nearest,tag=stellarity.spirit_wolf,distance=..1] at @s run function stellarity:items/spellbooks/natures_wrath/wolves/edit_wolf_nbt
