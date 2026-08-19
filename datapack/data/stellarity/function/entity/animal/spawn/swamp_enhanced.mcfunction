
execute store result score #animal stellarity.misc run random value 1..10

execute if score #animal stellarity.misc matches 1..9 run summon frog ~ ~ ~ {variant:"stellarity:end",Tags:["stellarity.animal","smithed.entity"]}
execute if score #animal stellarity.misc matches 10 run summon axolotl ~ ~ ~ {Variant:4,Age:-24000}
