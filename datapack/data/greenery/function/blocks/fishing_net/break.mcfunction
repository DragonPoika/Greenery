setblock ~ ~ ~ air
# execute if block ~ ~ ~ barrier[waterlogged=true] run setblock ~ ~ ~ water
execute if block ~ ~ ~ barrier[waterlogged=false] run setblock ~ ~ ~ air
playsound minecraft:entity.armor_stand.break block @a ~ ~ ~ 1 1
execute as @p unless entity @s[gamemode=creative] run loot spawn ~ ~ ~ loot greenery:blocks/fishing_net
kill @e[type=interaction,tag=greenery.fishing_net,limit=1,sort=nearest]
kill @s
return 0