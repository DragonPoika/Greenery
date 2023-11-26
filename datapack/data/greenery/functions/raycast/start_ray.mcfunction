#Setting up the raycasting data.

tag @s add greenery.raycast
scoreboard players set #greenery.hit greenery.raytemp 0
scoreboard players set #greenery.distance greenery.raytemp 0

#Activating the raycast. This function will call itself until it is done.

function greenery:raycast/ray

#Running custom post-raycast commands.

execute if entity @e[type=minecraft:bee,limit=1,sort=nearest,tag=greenery.butterfly] run function greenery:drop_butterfly

#Raycasting finished, removing tag from the raycaster.

tag @s remove greenery.raycast