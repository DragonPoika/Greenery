#Setting up the raycasting data.

tag @s add greenery.raycast
scoreboard players set #greenery.hit greenery.raytemp 0
scoreboard players set #greenery.distance greenery.raytemp 0

#Activating the raycast. This function will call itself until it is done.

function greenery:raycast/ray

#Running custom post-raycast commands.

playsound minecraft:ui.stonecutter.select_recipe player @a ~ ~ ~
particle minecraft:sweep_attack ^ ^.4 ^1

# execute if entity @e[type=minecraft:bee,limit=1,sort=nearest,tag=greenery.butterfly] run say Dropping Butterfly :3

#Raycasting finished, removing tag from the raycaster.

tag @s remove greenery.raycast