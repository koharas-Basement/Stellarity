particle block oak_sapling ~ ~ ~ 0 0 0 1 18 normal

execute unless score @s stellarity.misc2 matches 6.. run effect give @p[predicate=stellarity:items/holding/spellbooks/natures_wrath] absorption 8 0
execute if score @s stellarity.misc2 matches 6.. run effect give @p[predicate=stellarity:items/holding/spellbooks/natures_wrath] absorption 12 0

function stellarity:items/spellbooks/natures_wrath/spirit/damage/effects/as_marker/all
