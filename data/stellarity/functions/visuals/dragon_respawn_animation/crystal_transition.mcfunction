# This is done in order to remove the Beams
# that center the location the Ender Dragon spawns at

summon end_crystal ~ ~ ~ {ShowBottom:1b,Tags:["fe.new_crystal"]}
particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force
particle dragon_breath ~ ~ ~ 0 0 0 1 50 force
kill @s
