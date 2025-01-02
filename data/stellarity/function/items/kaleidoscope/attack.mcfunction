scoreboard players operation #charge stellarity.misc = @p stellarity.items.kaleidoscope.charge

execute if score @p stellarity.items.kaleidoscope.charge matches ..32 anchored eyes run function stellarity:items/kaleidoscope/charges/0
execute if score @p stellarity.items.kaleidoscope.charge matches 33..65 anchored eyes run function stellarity:items/kaleidoscope/charges/1
execute if score @p stellarity.items.kaleidoscope.charge matches 66..99 anchored eyes run function stellarity:items/kaleidoscope/charges/2
execute if score @p stellarity.items.kaleidoscope.charge matches 100 anchored eyes run function stellarity:items/kaleidoscope/charges/3
