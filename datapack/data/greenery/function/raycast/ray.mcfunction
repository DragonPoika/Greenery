#Check if an entity was detected.

execute if score #greenery.hit greenery.raytemp matches 0 positioned ~-0.05 ~-0.05 ~-0.05 as @e[tag=!greenery.raycast,dx=0,sort=nearest] run function greenery:raycast/check_hit_entity

#Run a function if a block was successfully detected.

execute unless block ~ ~ ~ #greenery:raycast_blocks run function greenery:raycast/hit_block
scoreboard players add #greenery.distance greenery.raytemp 1

#Advance forward and run the ray again if no entity and/or block was found.

execute if score #greenery.hit greenery.raytemp matches 0 if score #greenery.distance greenery.raytemp matches ..50 positioned ^ ^ ^0.1 run function greenery:raycast/ray