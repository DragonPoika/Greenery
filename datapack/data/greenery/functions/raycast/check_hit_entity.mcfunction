#Checks if an entity is found, and if so, runs the corresponding function.

execute if score #greenery.hit greenery.raytemp matches 0 positioned ~-0.9 ~-0.9 ~-0.9 if entity @s[dx=0] positioned ~0.95 ~0.95 ~0.95 run function greenery:raycast/hit_entity