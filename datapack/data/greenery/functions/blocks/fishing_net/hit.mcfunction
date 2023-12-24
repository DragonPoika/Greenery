playsound minecraft:entity.armor_stand.hit block @a ~ ~ ~ 1 1
scoreboard players add @e[type=item_display,tag=greenery.fishing_net,limit=1,sort=nearest] greenery.block_hit 1
execute as @p if entity @s[gamemode=creative] run scoreboard players add @e[type=item_display,tag=greenery.fishing_net,limit=1,sort=nearest] greenery.block_hit 2
execute as @e[type=item_display,tag=greenery.fishing_net,limit=1,sort=nearest] if score @s greenery.block_hit matches 3.. run function greenery:blocks/fishing_net/break
data remove entity @s attack