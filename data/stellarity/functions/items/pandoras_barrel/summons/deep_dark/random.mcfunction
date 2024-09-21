# Risky way of getting minerals
# VERY risky
# Hyper buffed Warden is NOT fun

scoreboard players set #warden stellarity.misc 0
execute if predicate stellarity:utils/chance/11percent run scoreboard players set #warden stellarity.misc 1

execute if score #warden stellarity.misc matches 1 positioned ~ ~-2.5 ~ run function stellarity:items/pandoras_barrel/summons/deep_dark/spawn_warden
execute if score #warden stellarity.misc matches 0 run function stellarity:items/pandoras_barrel/summons/deep_dark/drops

advancement grant @p only stellarity:aota/pandoras_barrel/open_in_deep_dark
