tag @s add greenery.checked
execute if predicate greenery:random/50 store result score @s greenery.butterfly_random run random value 1..4
execute if score @s greenery.butterfly_random matches 1 run execute summon bee run function greenery:butterfly/spawn/monarch
execute if score @s greenery.butterfly_random matches 2 run execute summon bee run function greenery:butterfly/spawn/morpho
execute if score @s greenery.butterfly_random matches 3 run execute summon bee run function greenery:butterfly/spawn/brimstone
execute if score @s greenery.butterfly_random matches 4 run execute summon bee run function greenery:butterfly/spawn/peacock
execute if predicate greenery:butterfly/rustic_spawning run execute summon bee run function greenery:butterfly/spawn/rustic
execute if predicate greenery:butterfly/jewel_spawning run execute summon bee run function greenery:butterfly/spawn/jewel