#Initialisation
    execute if entity @s[tag=!greenery.fishnetStp] run function greenery:fishing_net/init
#Cooldown
    execute if block ~ ~1 ~ chest[waterlogged=true] run scoreboard players remove @s[scores={greenery.fishnet_cd=1..}] greenery.fishnet_cd 1
    execute if block ~ ~1 ~ trapped_chest[waterlogged=true] run scoreboard players remove @s[scores={greenery.fishnet_cd=1..}] greenery.fishnet_cd 1
    #Set Cooldown to 2 Minutes
        execute if score @s greenery.fishnet_cd matches 0 run loot insert ~ ~1 ~ loot greenery:blocks/fishing_net_insert
        scoreboard players set @s[scores={greenery.fishnet_cd=0}] greenery.fishnet_cd 2400
execute as @e[type=interaction,tag=greenery.fishnet_interaction] if data entity @s attack at @s run function greenery:fishing_net/hit
scoreboard players add @s[scores={greenery.block_hit=1..}] greenery.block_hit_cd 1
scoreboard players reset @s[scores={greenery.block_hit_cd=20..}] greenery.block_hit
scoreboard players reset @s[scores={greenery.block_hit_cd=20..}] greenery.block_hit_cd