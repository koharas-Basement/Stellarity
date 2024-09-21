
execute store result score $player.temp_0 foka.misc.data run data get entity @s SelectedItem.tag.Damage
execute store result score $player.temp_1 foka.misc.data run data get entity @s SelectedItem.tag.foka_durability.damage
execute unless score $player.temp_0 foka.misc.data = $player.temp_1 foka.misc.data run function fokastudio:end/utils/custom_durability/damage_mainhand
