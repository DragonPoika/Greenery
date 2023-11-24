execute unless block ~ ~ ~ water run function greenery:fishing_net/break
execute unless block ~ ~ ~ water run return 0
summon item_display ~ ~ ~ {Tags:["greenery.fishnet_display"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.5f,0.5f,0.5f],scale:[1f,1f,1f]},item:{id:"minecraft:cookie",Count:1b,tag:{CustomModelData:795005}}}
setblock ~ ~ ~ barrier
summon interaction ~ ~-0.05 ~ {Tags:["greenery.fishnet_interaction"],height:1.1,width:1.1}
scoreboard players set @s greenery.fishnet_cd 2400
tag @s add greenery.fishnetStp