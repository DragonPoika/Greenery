#Cooldown
    execute if block ~ ~1 ~ chest[waterlogged=true] run scoreboard players remove @s[scores={greenery.fishnet_cd=1..}] greenery.fishnet_cd 1
    execute if block ~ ~1 ~ trapped_chest[waterlogged=true] run scoreboard players remove @s[scores={greenery.fishnet_cd=1..}] greenery.fishnet_cd 1

    #Cooldown = 2min && Insert Loot
        execute if score @s greenery.fishnet_cd matches 0 run loot insert ~ ~1 ~ loot greenery:gameplay/fishing/fishing_net_insert
        execute unless score @s greenery.fishnet_cd matches 0.. run scoreboard players set @s greenery.fishnet_cd 2400
        scoreboard players set @s[scores={greenery.fishnet_cd=0}] greenery.fishnet_cd 2400

#Hit
    execute as @e[type=interaction,tag=greenery.fishing_net,limit=1,sort=nearest] if data entity @s attack at @s run function greenery:blocks/fishing_net/hit
    scoreboard players add @s[scores={greenery.block_hit=1..}] greenery.block_hit_cd 1
    scoreboard players reset @s[scores={greenery.block_hit_cd=20..}] greenery.block_hit
    scoreboard players reset @s[scores={greenery.block_hit_cd=20..}] greenery.block_hit_cd

#Water Check
    execute if block ~ ~ ~ barrier[waterlogged=false] run function greenery:blocks/fishing_net/water_check