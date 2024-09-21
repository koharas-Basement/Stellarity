# Used for the End Crystal used to generate the End Gateway

kill @e[type=end_crystal,distance=..0.5,nbt={Invulnerable:1b}]
summon end_crystal ~ ~ ~ {Invulnerable:1b,Tags:["foka.initialize_end_ready"]}
