execute as @e[type=item,nbt={Item:{id:"minecraft:carrot"},Age:0s}] at @s run setblock ~ ~ ~ carrots
execute as @e[type=item,nbt={Item:{id:"minecraft:carrot"},Age:0s}] at @s store result score @s greenery.count run data get entity @s Item.Count
execute as @e[type=item,nbt={Item:{id:"minecraft:carrot"},Age:0s}] at @s run scoreboard players remove @s greenery.count 1
execute as @e[type=item,nbt={Item:{id:"minecraft:carrot"},Age:0s}] at @s store result entity @s Item.Count int 1 run scoreboard players get @s greenery.count
