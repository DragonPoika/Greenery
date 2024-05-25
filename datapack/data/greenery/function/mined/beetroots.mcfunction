execute as @e[type=item,nbt={Item:{id:"minecraft:beetroot_seeds"},Age:0s}] at @s run setblock ~ ~ ~ beetroots
execute as @e[type=item,nbt={Item:{id:"minecraft:beetroot_seeds"},Age:0s}] at @s store result score @s greenery.count run data get entity @s Item.Count
execute as @e[type=item,nbt={Item:{id:"minecraft:beetroot_seeds"},Age:0s}] at @s run scoreboard players remove @s greenery.count 1
execute as @e[type=item,nbt={Item:{id:"minecraft:beetroot_seeds"},Age:0s}] at @s store result entity @s Item.Count int 1 run scoreboard players get @s greenery.count
