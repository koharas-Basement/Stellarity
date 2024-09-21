loot spawn ~ ~-.2 ~ loot stellarity:items/dragonblade
data merge entity @e[type=item,limit=1,sort=nearest] {PickupDelay:15s,Invulnerable:1b,Age:-32768s,Tags:["stellarity.aota.skip"]}

playsound stellarity:item.dragonblade.drop block @a[distance=0..]

kill @s
kill @e[type=armor_stand,limit=1,sort=nearest,tag=stellarity.aota.sword_holder]
