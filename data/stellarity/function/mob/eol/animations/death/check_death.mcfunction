# $title @a actionbar "Still alive! $(UUID)"

$execute if entity @n[type=vindicator,nbt={UUID:$(UUID)}] run tp @s @n[type=vindicator,nbt={UUID:$(UUID)}]

$execute unless entity @n[type=vindicator,nbt={UUID:$(UUID)}] run function stellarity:mob/eol/animations/spawn/death_spawn

