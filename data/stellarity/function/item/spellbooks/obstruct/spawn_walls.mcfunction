
function stellarity:sfx/enter_leave_end_wave
playsound block.anvil.land player @a[distance=..16] ~ ~ ~ 1 0.5

scoreboard players set @s stellarity.items.spellbook.obstruct.cooldown 15


execute at @s run summon item_display ~0 ~ ~3 {Tags:["stellarity.obstruct.walls"],Passengers:[{id:"minecraft:shulker",NoAI:true,Invulnerable:true,Tags:["stellarity.obstruct.walls_solid"],attributes:[{id:"minecraft:scale",base:3}]}]}
execute positioned ~0 ~ ~3 as @n[type=item_display,tag=stellarity.obstruct.walls] run function stellarity:item/spellbooks/obstruct/wall

execute at @s run summon item_display ~0 ~ ~-3 {Tags:["stellarity.obstruct.walls"],Passengers:[{id:"minecraft:shulker",NoAI:true,Invulnerable:true,Tags:["stellarity.obstruct.walls_solid"],attributes:[{id:"minecraft:scale",base:3}]}]}
execute positioned ~0 ~ ~-3 as @n[type=item_display,tag=stellarity.obstruct.walls] run function stellarity:item/spellbooks/obstruct/wall

execute at @s run summon item_display ~3 ~ ~0 {Tags:["stellarity.obstruct.walls"],Passengers:[{id:"minecraft:shulker",NoAI:true,Invulnerable:true,Tags:["stellarity.obstruct.walls_solid"],attributes:[{id:"minecraft:scale",base:3}]}]}
execute positioned ~3 ~ ~0 as @n[type=item_display,tag=stellarity.obstruct.walls] run function stellarity:item/spellbooks/obstruct/wall

execute at @s run summon item_display ~-3 ~ ~0 {Tags:["stellarity.obstruct.walls"],Passengers:[{id:"minecraft:shulker",NoAI:true,Invulnerable:true,Tags:["stellarity.obstruct.walls_solid"],attributes:[{id:"minecraft:scale",base:3}]}]}
execute positioned ~-3 ~ ~0 as @n[type=item_display,tag=stellarity.obstruct.walls] run function stellarity:item/spellbooks/obstruct/wall

execute at @s run summon item_display ~3 ~ ~3 {Tags:["stellarity.obstruct.walls"],Passengers:[{id:"minecraft:shulker",NoAI:true,Invulnerable:true,Tags:["stellarity.obstruct.walls_solid"],attributes:[{id:"minecraft:scale",base:3}]}]}
execute positioned ~3 ~ ~3 as @n[type=item_display,tag=stellarity.obstruct.walls] run function stellarity:item/spellbooks/obstruct/wall

execute at @s run summon item_display ~3 ~ ~-3 {Tags:["stellarity.obstruct.walls"],Passengers:[{id:"minecraft:shulker",NoAI:true,Invulnerable:true,Tags:["stellarity.obstruct.walls_solid"],attributes:[{id:"minecraft:scale",base:3}]}]}
execute positioned ~3 ~ ~-3 as @n[type=item_display,tag=stellarity.obstruct.walls] run function stellarity:item/spellbooks/obstruct/wall

execute at @s run summon item_display ~-3 ~ ~3 {Tags:["stellarity.obstruct.walls"],Passengers:[{id:"minecraft:shulker",NoAI:true,Invulnerable:true,Tags:["stellarity.obstruct.walls_solid"],attributes:[{id:"minecraft:scale",base:3}]}]}
execute positioned ~-3 ~ ~3 as @n[type=item_display,tag=stellarity.obstruct.walls] run function stellarity:item/spellbooks/obstruct/wall

execute at @s run summon item_display ~-3 ~ ~-3 {Tags:["stellarity.obstruct.walls"],Passengers:[{id:"minecraft:shulker",NoAI:true,Invulnerable:true,Tags:["stellarity.obstruct.walls_solid"],attributes:[{id:"minecraft:scale",base:3}]}]}
execute positioned ~-3 ~ ~-3 as @n[type=item_display,tag=stellarity.obstruct.walls] run function stellarity:item/spellbooks/obstruct/wall

