kill @e[type=item,nbt={Item:{id:"minecraft:fletching_table",count:1},Age:0s},sort=nearest,limit=1]
execute as @p unless entity @s[gamemode=creative] run loot spawn ~ ~ ~ loot greenery:blocks/beehive
kill @s