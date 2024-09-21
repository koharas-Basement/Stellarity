effect clear @s regeneration

scoreboard players set @s stellarity.items.ender_insignia.hold_duration -20

playsound minecraft:block.beacon.deactivate player @a[distance=0..] ~ ~ ~

tag @s remove stellarity.ender_insignia.active

attribute @s generic.movement_speed modifier remove 401458ce-37e6-408f-9b4d-0ec9a6e65947

