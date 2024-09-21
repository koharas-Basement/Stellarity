particle block oak_sapling ~ ~ ~ 0 0 0 1 18 normal
particle firework ~ ~ ~ 0 0 0 0.1 12 normal
playsound block.grass.break neutral @a ~ ~ ~ 1 0.8
playsound minecraft:entity.shulker_bullet.hurt neutral @a ~ ~ ~ 1 1

execute unless score @s stellarity.misc2 matches 6.. run effect give @p[predicate=stellarity:items/spellbooks/holding_natures_wrath] absorption 8 0
execute if score @s stellarity.misc2 matches 6.. run effect give @p[predicate=stellarity:items/spellbooks/holding_natures_wrath] absorption 8 1

kill @s

