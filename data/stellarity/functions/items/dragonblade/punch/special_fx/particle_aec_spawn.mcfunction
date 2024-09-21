summon minecraft:area_effect_cloud ~ ~ ~ {Duration:12,Tags: ["stellarity.items.dragonblade.smthgram_aec"]}
tp @e[type=area_effect_cloud,limit=1,sort=nearest,tag=stellarity.items.dragonblade.smthgram_aec] ~ ~ ~ ~ ~

function stellarity:items/dragonblade/punch/special_fx/smthgram
#function stellarity:items/dragonblade/punch/special_fx/dragon_breath
#function stellarity:items/dragonblade/punch/special_fx/end_rod
function stellarity:items/dragonblade/punch/special_fx/smoke
execute rotated ~90 ~ run function stellarity:items/dragonblade/punch/special_fx/end_rod_secondary

particle minecraft:smoke ^ ^ ^ .35 .35 .35 0 25

playsound minecraft:entity.ender_dragon.ambient player @a[distance=0..] ~ ~ ~ 0.1 1.25
playsound minecraft:entity.firework_rocket.blast player @a[distance=0..] ~ ~ ~ 1 0.9
playsound minecraft:entity.firework_rocket.large_blast player @a[distance=0..] ~ ~ ~ 1 0.9
playsound stellarity:item.dragonblade.damage player @a[distance=0..] ~ ~ ~
