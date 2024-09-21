scoreboard players set @s stellarity.items.aery_sword.cryonics.duration 160

tag @s add stellarity.cryonics

summon block_display ~-0.5 ~ ~-0.5 {Tags:["stellarity.cryonics"],Passengers:[{id:"minecraft:block_display",block_state:{Name:"minecraft:ice",Properties:{}},transformation:[0.8660f,-0.5000f,0.0000f,0.0000f,0.4830f,0.8365f,0.2588f,0.7500f,-0.1294f,-0.2241f,0.9659f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:ice",Properties:{}},transformation:[1.0000f,0.0000f,0.0000f,-0.3125f,0.0000f,0.8660f,-0.5000f,0.0625f,0.0000f,0.5000f,0.8660f,-0.1875f,0.0000f,0.0000f,0.0000f,1.0000f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:ice",Properties:{}},transformation:[0.9659f,0.0000f,0.2588f,0.0625f,0.0670f,0.9659f,-0.2500f,-0.1875f,-0.2500f,0.2588f,0.9330f,0.1875f,0.0000f,0.0000f,0.0000f,1.0000f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:ice",Properties:{}},transformation:[0.8660f,0.0000f,0.5000f,0.0625f,-0.1294f,0.9659f,0.2241f,-0.0625f,-0.4830f,-0.2588f,0.8365f,0.3125f,0.0000f,0.0000f,0.0000f,1.0000f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:ice",Properties:{}},transformation:[0.7071f,-0.0000f,0.7071f,-0.5625f,-0.1830f,0.9659f,0.1830f,0.4375f,-0.6830f,-0.2588f,0.6830f,0.5625f,0.0000f,0.0000f,0.0000f,1.0000f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:ice",Properties:{}},transformation:[0.5000f,-0.5000f,0.7071f,-0.0625f,0.5536f,0.8124f,0.1830f,0.4375f,-0.6660f,0.3000f,0.6830f,0.6875f,0.0000f,0.0000f,0.0000f,1.0000f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:ice",Properties:{}},transformation:[-0.3536f,0.3536f,0.8660f,0.5000f,0.5245f,0.8415f,-0.1294f,0.6875f,-0.7745f,0.4085f,-0.4830f,1.3125f,0.0000f,0.0000f,0.0000f,1.0000f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:ice",Properties:{}},transformation:[0.6124f,-0.3536f,0.7071f,0.3750f,0.6415f,0.7450f,-0.1830f,0.8125f,-0.4621f,0.5657f,0.6830f,-0.0625f,0.0000f,0.0000f,0.0000f,1.0000f]}]}

particle minecraft:block ice ~ ~0.5 ~ 0.5 0.7 0.5 1 40
particle flash ~ ~1 ~

playsound minecraft:block.glass.place player @a ~ ~ ~ 1 0.6
playsound minecraft:block.amethyst_block.place player @a ~ ~ ~ 1 0.6
playsound minecraft:block.respawn_anchor.set_spawn player @a ~ ~ ~ 1 0.8
