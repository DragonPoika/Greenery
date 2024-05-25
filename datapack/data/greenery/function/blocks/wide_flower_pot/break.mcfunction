data merge entity @s {item:{tag:{CustomModelData:795012}}}
execute if block ~ ~ ~ #buttons run setblock ~ ~ ~ air destroy
kill @e[type=item,nbt={Item:{id:"minecraft:oak_button",Count:1b},Age:0s},sort=nearest,limit=1]
kill @e[type=item,nbt={Item:{id:"minecraft:oak_button",Count:1b},Age:1s},sort=nearest,limit=1]
execute as @p unless entity @s[gamemode=creative] run loot spawn ~ ~ ~ loot greenery:blocks/wide_flower_pot
kill @e[type=interaction,tag=greenery.wide_flower_pot,limit=1,sort=nearest]
kill @e[type=marker,tag=greenery.wide_flower_pot,limit=1,sort=nearest]
kill @s