

$summon shulker_bullet ~ ~1 ~0.5 {Tags:["stellarity.defensive_shulker_bullet","smithed.entity"],Steps:1,Owner:$(UUID)}
$execute if predicate kohara:chance/80percent run summon shulker_bullet ~ ~1 ~0.5 {Tags:["stellarity.defensive_shulker_bullet","smithed.entity"],Steps:1,Owner:$(UUID)}
$execute if predicate kohara:chance/40percent run summon shulker_bullet ~ ~1 ~0.5 {Tags:["stellarity.defensive_shulker_bullet","smithed.entity"],Steps:1,Owner:$(UUID)}
$execute positioned ~ ~1 ~0.5 as @e[type=shulker_bullet,distance=..1,nbt={Owner:$(UUID)}] at @s run function stellarity:item/armor/shulker/shulker_bullets/seek

playsound minecraft:entity.shulker.shoot player @a[distance=..32]
