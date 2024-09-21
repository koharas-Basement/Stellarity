summon minecraft:area_effect_cloud ~ ~ ~ {Duration:12,Tags: ["stellarity.items.dragonblade.smthgram_aec"]}
tp @e[type=area_effect_cloud,limit=1,sort=nearest,tag=stellarity.items.dragonblade.smthgram_aec] ~ ~ ~ ~ ~

function stellarity:items/dragonblade/punch/special_fx/smthgram
function stellarity:items/dragonblade/punch/special_fx/dragon_breath
function stellarity:items/dragonblade/punch/special_fx/end_rod

particle minecraft:smoke ^ ^ ^ .35 .35 .35 0 25

playsound minecraft:entity.ender_dragon.ambient player @a ~ ~ ~ 0.2 1.25
playsound minecraft:entity.firework_rocket.blast player @a ~ ~ ~ 1 0.9
playsound minecraft:entity.firework_rocket.large_blast player @a ~ ~ ~ 1 0.9
