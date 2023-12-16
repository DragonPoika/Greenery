execute if block ~ ~ ~ furnace[facing=south] run summon item_display ~ ~ ~ {Rotation:[180.0f,0.0f],Tags:["greenery.block","greenery.new_block"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]}}
execute if block ~ ~ ~ furnace[facing=west] run summon item_display ~ ~ ~ {Rotation:[-90.0f,0.0f],Tags:["greenery.block","greenery.new_block"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]}}
execute if block ~ ~ ~ furnace[facing=north] run summon item_display ~ ~ ~ {Rotation:[0.0f,0.0f],Tags:["greenery.block","greenery.new_block"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]}}
execute if block ~ ~ ~ furnace[facing=east] run summon item_display ~ ~ ~ {Rotation:[90.0f,0.0f],Tags:["greenery.block","greenery.new_block"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]}}
summon interaction ~ ~-0.5 ~ {Tags:["greenery.block","greenery.new_block"],height:1.01,width:1.01}
summon marker ~ ~ ~ {Tags:["greenery.block","greenery.new_block"]}
data modify entity @e[type=item_display,tag=greenery.new_block,limit=1,sort=nearest] item set from block ~ ~ ~ Items[0]
execute as @e[type=item_display,tag=greenery.new_block,limit=1,sort=nearest] run function greenery:blocks/util/add_tag with block ~ ~ ~ Items[0].tag
execute as @e[type=interaction,tag=greenery.new_block,limit=1,sort=nearest] run function greenery:blocks/util/add_tag with block ~ ~ ~ Items[0].tag
execute as @e[type=marker,tag=greenery.new_block,limit=1,sort=nearest] run function greenery:blocks/display_case/placed
execute as @e[type=marker,tag=greenery.new_block,limit=1,sort=nearest] run function greenery:blocks/util/add_tag with block ~ ~ ~ Items[0].tag
setblock ~ ~ ~ barrier