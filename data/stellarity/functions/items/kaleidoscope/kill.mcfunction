scoreboard players operation #charge stellarity.misc = @s stellarity.items.kaleidoscope.charge

execute if score @s[advancements={stellarity:events/items/attack/kaleidoscope=false}] stellarity.items.kaleidoscope.charge matches 33..65 anchored eyes positioned ^ ^ ^2.5 run function stellarity:items/kaleidoscope/charges/1
execute if score @s[advancements={stellarity:events/items/attack/kaleidoscope=false}] stellarity.items.kaleidoscope.charge matches 66..99 anchored eyes positioned ^ ^ ^2.5 run function stellarity:items/kaleidoscope/charges/2
execute if score @s[advancements={stellarity:events/items/attack/kaleidoscope=false}] stellarity.items.kaleidoscope.charge matches 100 anchored eyes positioned ^ ^ ^2.5 run function stellarity:items/kaleidoscope/charges/3

advancement revoke @s only stellarity:events/items/kill/kaleidoscope
