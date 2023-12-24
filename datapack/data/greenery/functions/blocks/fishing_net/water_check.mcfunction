# execute if block ~1 ~ ~ water if block ~1 ~ ~ water run tag @s add greenery.water_found
execute if block ~1 ~ ~ water if block ~-1 ~ ~ water run tag @s add greenery.water_found
execute if block ~-1 ~ ~ water if block ~1 ~ ~ water run tag @s add greenery.water_found
# execute if block ~-1 ~ ~ water if block ~-1 ~ ~ water run tag @s add greenery.water_found

# execute if block ~ ~ ~1 water if block ~ ~ ~1 water run tag @s add greenery.water_found
execute if block ~ ~ ~1 water if block ~ ~ ~-1 water run tag @s add greenery.water_found
execute if block ~ ~ ~-1 water if block ~ ~ ~1 water run tag @s add greenery.water_found
# execute if block ~ ~ ~-1 water if block ~ ~ ~-1 water run tag @s add greenery.water_found

execute if block ~ ~ ~1 water if block ~1 ~ ~ water run tag @s add greenery.water_found
execute if block ~ ~ ~1 water if block ~-1 ~ ~ water run tag @s add greenery.water_found
execute if block ~ ~ ~-1 water if block ~1 ~ ~ water run tag @s add greenery.water_found
execute if block ~ ~ ~-1 water if block ~-1 ~ ~ water run tag @s add greenery.water_found

execute if entity @s[tag=greenery.water_found] run setblock ~ ~ ~ barrier[waterlogged=true]

tag @s remove greenery.water_found