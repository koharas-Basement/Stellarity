
function stellarity:sfx/enter_leave_end_wave
playsound block.anvil.land player @a[distance=..16] ~ ~ ~ 1 0.5

scoreboard players set @s stellarity.items.spellbook.obstruct.cooldown 15

execute rotated ~ 0.0 positioned ~ ~ ~ run summon item_display ^0 ^1 ^3 {Tags:["stellarity.obstruct.walls"],Passengers:[{id:"minecraft:shulker",NoAI:true,Invulnerable:true,Tags:["stellarity.obstruct.walls_solid"],attributes:[{id:"minecraft:scale",base:2}]}],}
execute rotated ~ 0.0 positioned ~ ~ ~ run summon item_display ^0 ^-1 ^3 {Tags:["stellarity.obstruct.walls"],Passengers:[{id:"minecraft:shulker",NoAI:true,Invulnerable:true,Tags:["stellarity.obstruct.walls_solid"],attributes:[{id:"minecraft:scale",base:2}]}],}


execute rotated ~ 0.0 positioned ~ ~ ~ run summon item_display ^-1 ^0.99 ^3 {Tags:["stellarity.obstruct.walls"],Passengers:[{id:"minecraft:shulker",NoAI:true,Invulnerable:true,Tags:["stellarity.obstruct.walls_solid"],attributes:[{id:"minecraft:scale",base:2}]}],}
execute rotated ~ 0.0 positioned ~ ~ ~ run summon item_display ^-1 ^-0.99 ^3 {Tags:["stellarity.obstruct.walls"],Passengers:[{id:"minecraft:shulker",NoAI:true,Invulnerable:true,Tags:["stellarity.obstruct.walls_solid"],attributes:[{id:"minecraft:scale",base:2}]}],}

execute rotated ~ 0.0 positioned ~ ~ ~ run summon item_display ^-2 ^0.98 ^3 {Tags:["stellarity.obstruct.walls"],Passengers:[{id:"minecraft:shulker",NoAI:true,Invulnerable:true,Tags:["stellarity.obstruct.walls_solid"],attributes:[{id:"minecraft:scale",base:2}]}],}
execute rotated ~ 0.0 positioned ~ ~ ~ run summon item_display ^-2 ^-0.98 ^3 {Tags:["stellarity.obstruct.walls"],Passengers:[{id:"minecraft:shulker",NoAI:true,Invulnerable:true,Tags:["stellarity.obstruct.walls_solid"],attributes:[{id:"minecraft:scale",base:2}]}],}

execute rotated ~ 0.0 positioned ~ ~ ~ run summon item_display ^-3 ^0.97 ^3 {Tags:["stellarity.obstruct.walls"],Passengers:[{id:"minecraft:shulker",NoAI:true,Invulnerable:true,Tags:["stellarity.obstruct.walls_solid"],attributes:[{id:"minecraft:scale",base:2}]}],}
execute rotated ~ 0.0 positioned ~ ~ ~ run summon item_display ^-3 ^-0.97 ^3 {Tags:["stellarity.obstruct.walls"],Passengers:[{id:"minecraft:shulker",NoAI:true,Invulnerable:true,Tags:["stellarity.obstruct.walls_solid"],attributes:[{id:"minecraft:scale",base:2}]}],}

execute rotated ~ 0.0 positioned ~ ~ ~ run summon item_display ^1 ^0.99 ^3 {Tags:["stellarity.obstruct.walls"],Passengers:[{id:"minecraft:shulker",NoAI:true,Invulnerable:true,Tags:["stellarity.obstruct.walls_solid"],attributes:[{id:"minecraft:scale",base:2}]}],}
execute rotated ~ 0.0 positioned ~ ~ ~ run summon item_display ^1 ^-0.99 ^3 {Tags:["stellarity.obstruct.walls"],Passengers:[{id:"minecraft:shulker",NoAI:true,Invulnerable:true,Tags:["stellarity.obstruct.walls_solid"],attributes:[{id:"minecraft:scale",base:2}]}],}

execute rotated ~ 0.0 positioned ~ ~ ~ run summon item_display ^2 ^0.98 ^3 {Tags:["stellarity.obstruct.walls"],Passengers:[{id:"minecraft:shulker",NoAI:true,Invulnerable:true,Tags:["stellarity.obstruct.walls_solid"],attributes:[{id:"minecraft:scale",base:2}]}],}
execute rotated ~ 0.0 positioned ~ ~ ~ run summon item_display ^2 ^-0.98 ^3 {Tags:["stellarity.obstruct.walls"],Passengers:[{id:"minecraft:shulker",NoAI:true,Invulnerable:true,Tags:["stellarity.obstruct.walls_solid"],attributes:[{id:"minecraft:scale",base:2}]}],}

execute rotated ~ 0.0 positioned ~ ~ ~ run summon item_display ^3 ^0.97 ^3 {Tags:["stellarity.obstruct.walls"],Passengers:[{id:"minecraft:shulker",NoAI:true,Invulnerable:true,Tags:["stellarity.obstruct.walls_solid"],attributes:[{id:"minecraft:scale",base:2}]}],}
execute rotated ~ 0.0 positioned ~ ~ ~ run summon item_display ^3 ^-0.97 ^3 {Tags:["stellarity.obstruct.walls"],Passengers:[{id:"minecraft:shulker",NoAI:true,Invulnerable:true,Tags:["stellarity.obstruct.walls_solid"],attributes:[{id:"minecraft:scale",base:2}]}],}
