playsound minecraft:entity.armor_stand.hit block @a ~ ~ ~ 1 1
scoreboard players add @e[type=marker,tag=greenery.fishnet,limit=1,sort=nearest] greenery.block_hit 1
execute if score @e[type=marker,tag=greenery.fishnet,limit=1,sort=nearest] greenery.block_hit matches 3.. as @e[type=marker,tag=greenery.fishnet,limit=1,sort=nearest] at @s run function greenery:fishing_net/break
data remove entity @s attack