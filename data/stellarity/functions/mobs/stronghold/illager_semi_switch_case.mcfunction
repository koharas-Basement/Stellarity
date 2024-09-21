# 'Semi switch case' my ass, this is literally a wall of 'elseif'

tag @s add stellarity.stronghold.buffed

execute if entity @s[type=witch] run function stellarity:mobs/stronghold/buff/witch
execute if entity @s[type=evoker] run function stellarity:mobs/stronghold/buff/evoker
execute if entity @s[type=vindicator] run function stellarity:mobs/stronghold/buff/vindicator
execute if entity @s[type=pillager] run function stellarity:mobs/stronghold/buff/pillager
execute if entity @s[type=illusioner] run function stellarity:mobs/stronghold/buff/illusioner
