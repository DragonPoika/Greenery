tag @s add greenery.checked
execute if predicate greenery:random/15 store result score @s greenery.butterfly_random run random value 1..3
execute if score @s greenery.butterfly_random matches 1 run function greenery:butterfly/spawn/monarch
execute if score @s greenery.butterfly_random matches 2 run function greenery:butterfly/spawn/morpho
execute if score @s greenery.butterfly_random matches 3 run function greenery:butterfly/spawn/brimstone