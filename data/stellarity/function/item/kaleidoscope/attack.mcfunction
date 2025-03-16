scoreboard players operation #charge stellarity.misc = @p[predicate=stellarity:item/holding/kaleidoscope] stellarity.items.kaleidoscope.charge

execute if score #charge stellarity.misc matches ..32 anchored eyes run function stellarity:item/kaleidoscope/charges/0
execute if score #charge stellarity.misc matches 33..65 anchored eyes run function stellarity:item/kaleidoscope/charges/1
execute if score #charge stellarity.misc matches 66..99 anchored eyes run function stellarity:item/kaleidoscope/charges/2
execute if score #charge stellarity.misc matches 100 anchored eyes run function stellarity:item/kaleidoscope/charges/3
