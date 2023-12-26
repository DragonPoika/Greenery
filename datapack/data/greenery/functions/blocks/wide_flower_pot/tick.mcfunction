execute unless block ~ ~ ~ #buttons if entity @s[tag=greenery.wfp_filled] run function greenery:blocks/wide_flower_pot/drop_item
execute unless block ~ ~ ~ #buttons as @e[type=item_display,tag=greenery.wide_flower_pot,limit=1,sort=nearest] run function greenery:blocks/wide_flower_pot/break
execute if data entity @s attack if entity @s[tag=greenery.wfp_filled] run function greenery:blocks/wide_flower_pot/drop_item
execute if data entity @s attack as @e[type=item_display,tag=greenery.wide_flower_pot,limit=1,sort=nearest] run function greenery:blocks/wide_flower_pot/break