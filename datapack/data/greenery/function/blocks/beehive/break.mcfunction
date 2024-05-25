kill @e[type=item,nbt={Item:{id:"minecraft:fletching_table",Count:1b},Age:0s},sort=nearest,limit=1]
execute as @p unless entity @s[gamemode=creative] run loot spawn ~ ~ ~ loot greenery:blocks/beehive
kill @s