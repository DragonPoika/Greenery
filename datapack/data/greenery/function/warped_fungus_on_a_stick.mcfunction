execute if predicate greenery:holding/butterfly_net anchored eyes positioned ^ ^ ^ anchored feet run function greenery:raycast/start_ray
execute if predicate greenery:holding/butterfly_net if entity @s[gamemode=survival] run item modify entity @s weapon.mainhand greenery:add_damage
execute if predicate greenery:holding/broken_butterfly_net run function greenery:items/util/break/butterfly_net
execute if predicate greenery:holding/queen_bee_crown run function greenery:items/queen_bee_crown