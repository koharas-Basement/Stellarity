# Init
scoreboard objectives add StringLib dummy
execute unless score #StringLib.Init StringLib matches 1 run function stellarity:utils/stringlib/zprivate/init
