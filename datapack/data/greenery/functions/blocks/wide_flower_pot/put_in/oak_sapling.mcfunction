advancement revoke @s only greenery:util/blocks/wide_flower_pot/put_in/oak_sapling
tag @s add greenery.wfp_this

execute as @e[type=interaction,tag=greenery.wide_flower_pot,distance=..5] if data entity @s interaction as @s[distance=..5] at @s run data modify entity @e[type=marker,tag=greenery.wide_flower_pot,limit=1,sort=nearest] data set from entity @p[tag=greenery.wfp_this] SelectedItem
execute as @e[type=interaction,tag=greenery.wide_flower_pot,distance=..5] if data entity @s interaction as @s[distance=..5] at @s run data modify entity @e[type=marker,tag=greenery.wide_flower_pot,limit=1,sort=nearest] data merge value {Count:1b}
item modify entity @s weapon.mainhand greenery:remove_count
say oak_sapling
execute as @e[type=interaction,tag=greenery.wide_flower_pot,distance=..5] if data entity @s interaction as @s[distance=..5] at @s run data merge entity @e[type=item_display,tag=greenery.wide_flower_pot,limit=1,sort=nearest] {item:{tag:{CustomModelData:795034}}}
execute as @e[type=interaction,tag=greenery.wide_flower_pot,distance=..5] if data entity @s interaction as @s[distance=..5] run tag @s add greenery.wfp_filled
execute as @e[type=interaction,tag=greenery.wide_flower_pot,distance=..5] if data entity @s interaction as @s[distance=..5] run data remove entity @s interaction

tag @s remove greenery.wfp_this