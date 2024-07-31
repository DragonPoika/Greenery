tag @s add greenery.checked
execute if predicate greenery:random/50 store result score @s greenery.butterfly_random run random value 1..3
execute if score @s greenery.butterfly_random matches 1 run execute summon bee run function greenery:butterfly/spawn/monarch
execute if score @s greenery.butterfly_random matches 2 run execute summon bee run function greenery:butterfly/spawn/morpho
execute if score @s greenery.butterfly_random matches 3 run execute summon bee run function greenery:butterfly/spawn/brimstone