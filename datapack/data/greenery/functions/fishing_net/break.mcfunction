execute if block ~ ~ ~ barrier run setblock ~ ~ ~ water
playsound minecraft:entity.armor_stand.break block @a ~ ~ ~ 1 1
loot spawn ~ ~ ~ loot greenery:blocks/fishing_net
kill @e[type=item_display,tag=greenery.fishnet_display,limit=1,sort=nearest]
kill @e[type=interaction,tag=greenery.fishnet_interaction,limit=1,sort=nearest]
kill @s
return 0