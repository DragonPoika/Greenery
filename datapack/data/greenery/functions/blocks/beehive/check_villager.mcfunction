execute store result score @s greenery.x run data get entity @s Pos[0]
execute store result score @s greenery.y run data get entity @s Pos[1]
execute store result score @s greenery.z run data get entity @s Pos[2]
execute as @e[tag=greenery.check_villager,limit=1,sort=nearest] store result score @s greenery.x run data get entity @s Brain.memories."minecraft:job_site".value.pos[0]
execute as @e[tag=greenery.check_villager,limit=1,sort=nearest] store result score @s greenery.y run data get entity @s Brain.memories."minecraft:job_site".value.pos[1]
execute as @e[tag=greenery.check_villager,limit=1,sort=nearest] store result score @s greenery.z run data get entity @s Brain.memories."minecraft:job_site".value.pos[2]
execute if score @s greenery.x = @e[tag=greenery.check_villager,limit=1,sort=nearest] greenery.x if score @s greenery.y = @e[tag=greenery.check_villager,limit=1,sort=nearest] greenery.y if score @s greenery.z = @e[tag=greenery.check_villager,limit=1,sort=nearest] greenery.z as @e[tag=greenery.check_villager,limit=1,sort=nearest] at @s run function greenery:entities/beekeeper/add_initial_tags

say check