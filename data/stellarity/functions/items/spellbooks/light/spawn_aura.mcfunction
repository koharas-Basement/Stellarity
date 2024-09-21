scoreboard players set @s stellarity.items.spellbook.light.cooldown 53

summon marker ~ ~.92 ~ {Tags:["stellarity.book_of_light.aura","stellarity.book_of_light","stellarity.marker"]}
summon marker ~ ~.92 ~ {Tags:["stellarity.book_of_light.aura_2","stellarity.book_of_light","stellarity.marker"]}

execute positioned ~ ~.92 ~ run function stellarity:items/spellbooks/light/pulse 

playsound minecraft:block.conduit.activate player @a[distance=0..] ~ ~.92 ~ 1 1
playsound minecraft:entity.evoker.cast_spell player @a[distance=0..] ~ ~.92 ~ 0.4 1
playsound minecraft:block.respawn_anchor.set_spawn player @a[distance=0..] ~ ~.92 ~ 0.4 1