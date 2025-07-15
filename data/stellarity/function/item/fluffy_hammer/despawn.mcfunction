$summon item ~ ~ ~ {Item:$(item), PickupDelay:0, Tags:["smithed.strict","smithed.entity"],Invulnerable:true}

kill @n[tag=stellarity.entity.fluffy_hammer_display]
kill @s

playsound stellarity:item.fluffy_hammer.return player @a[distance=..32] ~ ~ ~
