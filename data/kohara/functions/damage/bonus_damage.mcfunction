scoreboard players reset #attribute.damage.total kohara.misc
scoreboard players set #100 kohara.misc 100

# 100x larger than the rest so we can get a nice percentage at the end
execute store result score #attribute.damage.current kohara.misc run attribute @s minecraft:generic.attack_damage get 10000

execute store result score #attribute.damage.base kohara.misc run \
	attribute @s minecraft:generic.attack_damage base get 100
execute store result score #attribute.damage.weapon kohara.misc run \
	attribute @s minecraft:generic.attack_damage modifier value get CB3F55D3-645C-4F38-A497-9C13A33DB5CF 100
execute store result score #attribute.damage.strength kohara.misc run \
	attribute @s minecraft:generic.attack_damage modifier value get 648D7064-6A60-4F59-8ABE-C2C23A6DD7A9 100
#execute store result score #attribute.damage.weakness kohara.misc run \
#	attribute @s minecraft:generic.attack_damage modifier value get 22653B89-116E-49DC-9B6B-9971489B5BE5 100

scoreboard players operation #attribute.damage.total kohara.misc += #attribute.damage.base kohara.misc
scoreboard players operation #attribute.damage.total kohara.misc += #attribute.damage.weapon kohara.misc
scoreboard players operation #attribute.damage.total kohara.misc += #attribute.damage.strength kohara.misc
#scoreboard players operation #attribute.damage.total kohara.misc += #attribute.damage.weakness kohara.misc

execute if score #attribute.damage.total kohara.misc matches ..0 run scoreboard players set #attribute.damage.total kohara.misc 0


scoreboard players operation #attribute.damage.ratio kohara.misc = #attribute.damage.current kohara.misc
scoreboard players operation #attribute.damage.ratio kohara.misc /= #attribute.damage.total kohara.misc
scoreboard players operation #attribute.damage.ratio kohara.misc -= #100 kohara.misc

scoreboard players operation #attribute.damage.ratio kohara.misc *= #damage_boost_efficiency kohara.misc
scoreboard players operation #attribute.damage.ratio kohara.misc /= #100 kohara.misc

# Increase/decrease damage
scoreboard players operation #temp kohara.misc = #damage kohara.misc
scoreboard players operation #temp kohara.misc *= #attribute.damage.ratio kohara.misc
scoreboard players operation #temp kohara.misc /= #100 kohara.misc
scoreboard players operation #damage kohara.misc += #temp kohara.misc
