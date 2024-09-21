particle rain ~ ~ ~ 0.15 0.15 0.15 1 15 normal

execute unless score @s stellarity.misc2 matches 7.. run effect give @p[predicate=stellarity:items/holding/spellbooks/natures_wrath] regeneration 13 0 false
execute if score @s stellarity.misc2 matches 7.. run effect give @p[predicate=stellarity:items/holding/spellbooks/natures_wrath] regeneration 7 1 false

function stellarity:items/spellbooks/natures_wrath/spirit/damage/effects/as_marker/all
