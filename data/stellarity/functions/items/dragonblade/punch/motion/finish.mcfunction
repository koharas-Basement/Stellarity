tp @e[limit=1,sort=nearest,tag=stellarity.items.dragonblade.in_punch] ~ ~ ~
function stellarity:items/dragonblade/punch/special_fx/teleport

execute if score #hit stellarity.misc matches 0 run function stellarity:items/dragonblade/punch/damage/normal
execute if score #hit stellarity.misc matches 1 run function stellarity:items/dragonblade/punch/damage/hit_block

tag @s remove stellarity.items.dragonblade.in_punch
