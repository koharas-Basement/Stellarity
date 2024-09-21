
execute store result score $player.temp_0 stellarity.misc run data get entity @s Inventory[{Slot:103b}].tag.Damage
execute store result score $player.temp_1 stellarity.misc run data get entity @s Inventory[{Slot:103b}].tag.stellar_durability.damage
execute unless score $player.temp_0 stellarity.misc = $player.temp_1 stellarity.misc run function stellarity:utils/custom_durability/damage_helmet
