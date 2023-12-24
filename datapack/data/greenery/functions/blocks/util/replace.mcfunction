execute if block ~ ~ ~ furnace[facing=south] run summon item_display ~ ~ ~ {Rotation:[180.0f,0.0f],Tags:["greenery.block","greenery.new_block"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]}}
execute if block ~ ~ ~ furnace[facing=west] run summon item_display ~ ~ ~ {Rotation:[-90.0f,0.0f],Tags:["greenery.block","greenery.new_block"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]}}
execute if block ~ ~ ~ furnace[facing=north] run summon item_display ~ ~ ~ {Rotation:[0.0f,0.0f],Tags:["greenery.block","greenery.new_block"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]}}
execute if block ~ ~ ~ furnace[facing=east] run summon item_display ~ ~ ~ {Rotation:[90.0f,0.0f],Tags:["greenery.block","greenery.new_block"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]}}
data modify entity @e[type=item_display,tag=greenery.new_block,limit=1,sort=nearest] item set from block ~ ~ ~ Items[0]
execute as @e[type=item_display,tag=greenery.new_block,limit=1,sort=nearest] run function greenery:blocks/util/add_tag with block ~ ~ ~ Items[0].tag
execute as @e[type=item_display,tag=greenery.display_case,tag=greenery.new_block,limit=1,sort=nearest] run summon interaction ~ ~-0.5 ~ {Tags:["greenery.block","greenery.new_block"],height:1.01,width:1.01}
execute as @e[type=item_display,tag=greenery.display_case,tag=greenery.new_block,limit=1,sort=nearest] run summon marker ~ ~ ~ {Tags:["greenery.block","greenery.new_block"]}
execute as @e[type=item_display,tag=greenery.butterfly_jar,tag=greenery.new_block,limit=1,sort=nearest] run data merge entity @s {Rotation:[180.0f,0f],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.1875f,0f,-0.1875f],scale:[1f,1f,1f]}}
execute as @e[type=item_display,tag=greenery.butterfly_jar,tag=greenery.new_block,limit=1,sort=nearest] run summon interaction ~ ~-0.5 ~ {Tags:["greenery.block","greenery.new_block"],height:1.01,width:1.01}
execute as @e[type=item_display,tag=greenery.butterfly_jar,tag=greenery.new_block,limit=1,sort=nearest] run summon marker ~ ~ ~ {Tags:["greenery.block","greenery.new_block"]}
execute as @e[type=item_display,tag=greenery.fishing_net,tag=greenery.new_block,limit=1,sort=nearest] run summon interaction ~ ~-0.5 ~ {Tags:["greenery.block","greenery.new_block"],height:1.01,width:1.01}
execute if predicate greenery:is_sneaking as @e[type=item_display,tag=greenery.display_case,tag=greenery.new_block,limit=1,sort=nearest] at @s unless block ^ ^ ^1 air run tag @s add gree.display_case.re_place
execute as @e[type=item_display,tag=greenery.display_case,tag=greenery.new_block,tag=gree.display_case.re_place,limit=1,sort=nearest] run data modify entity @s transformation.translation[1] set value 0.2f
execute as @e[type=item_display,tag=greenery.display_case,tag=greenery.new_block,tag=gree.display_case.re_place,limit=1,sort=nearest] run data modify entity @s Rotation[1] set value -45.0f
execute as @e[type=item_display,tag=greenery.display_case,tag=greenery.new_block,tag=gree.display_case.re_place,limit=1,sort=nearest] run tag @s remove gree.display_case.re_place
execute as @e[type=interaction,tag=greenery.new_block,limit=1,sort=nearest] run function greenery:blocks/util/add_tag with block ~ ~ ~ Items[0].tag
execute as @e[type=marker,tag=greenery.new_block,limit=1,sort=nearest] run function greenery:blocks/util/add_tag with block ~ ~ ~ Items[0].tag
execute as @e[type=marker,tag=greenery.display_case,tag=greenery.new_block,limit=1,sort=nearest] run function greenery:blocks/display_case/placed
execute as @e[type=marker,tag=greenery.butterfly_jar,tag=greenery.new_block,limit=1,sort=nearest] run function greenery:blocks/butterfly_jar/placed
execute as @e[type=item_display,tag=greenery.display_case,tag=greenery.new_block,limit=1,sort=nearest] run setblock ~ ~ ~ barrier
execute as @e[type=item_display,tag=greenery.butterfly_jar,tag=greenery.new_block,limit=1,sort=nearest] run setblock ~ ~ ~ barrier
execute as @e[type=item_display,tag=greenery.fishing_net,tag=greenery.new_block,limit=1,sort=nearest] run setblock ~ ~ ~ barrier

execute as @e[type=item_display,tag=greenery.hanging_flower_pot,tag=greenery.new_block,limit=1,sort=nearest] store result score @s greenery.cmd run data get entity @s item.tag.CustomModelData
scoreboard players add @e[type=item_display,tag=greenery.hanging_flower_pot,tag=greenery.new_block,limit=1,sort=nearest] greenery.cmd 1
execute as @e[type=item_display,tag=greenery.hanging_flower_pot,tag=greenery.new_block,limit=1,sort=nearest] store result entity @s item.tag.CustomModelData int 1 run scoreboard players get @s greenery.cmd
execute as @e[type=item_display,tag=greenery.hanging_flower_pot,tag=greenery.new_block,limit=1,sort=nearest] run setblock ~ ~ ~ flower_pot
tag @e remove greenery.new_block