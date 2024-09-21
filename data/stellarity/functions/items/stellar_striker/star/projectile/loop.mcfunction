scoreboard players add @s stellarity.misc 1

tp @s[tag=!stellarity.casket] ^ ^ ^1.75 ~ ~0.35
tp @s[tag=stellarity.casket] ^ ^ ^2.1875 ~ ~0.35

execute if score @s stellarity.misc matches 2.. run function stellarity:items/stellar_striker/star/projectile/particles

execute if score @s stellarity.misc matches 3.. if entity @e[type=!#kohara:invalid_targets,dx=0,limit=1,sort=nearest] run function stellarity:items/stellar_striker/star/projectile/detonate

execute if score @s stellarity.misc matches 60.. run function stellarity:items/stellar_striker/star/projectile/detonate

# Uses a score to determine whether to remove the projectile or not
# because for some reason it detonated twice
# MC quirks I guess...
execute unless score @s stellarity.misc2 matches 1 unless block ^ ^ ^ #kohara:non_solid run function stellarity:items/stellar_striker/star/projectile/detonate
execute unless score @s stellarity.misc2 matches 1 unless block ^ ^ ^1 #kohara:non_solid run function stellarity:items/stellar_striker/star/projectile/detonate

execute if score @s stellarity.misc2 matches 1 run kill @s
