advancement revoke @s only greenery:util/blocks/wide_flower_pot/take_out
tag @s add greenery.wfp_this

execute as @e[type=interaction,tag=greenery.wide_flower_pot,distance=..5] if data entity @s interaction as @s[distance=..5] at @s run summon armor_stand ~ ~ ~ {Tags:["greenery.wide_flower_pot"],Invisible:1b}
execute as @e[type=interaction,tag=greenery.wide_flower_pot,distance=..5] if data entity @s interaction as @s[distance=..5] at @s run data modify entity @e[type=armor_stand,tag=greenery.wide_flower_pot,limit=1,sort=nearest] HandItems[0] set from entity @e[type=marker,tag=greenery.wide_flower_pot,limit=1,sort=nearest] data
execute as @e[type=interaction,tag=greenery.wide_flower_pot,distance=..5] if data entity @s interaction as @s[distance=..5] at @s run item replace entity @p[tag=greenery.wfp_this] weapon.mainhand from entity @e[type=armor_stand,tag=greenery.wide_flower_pot,limit=1,sort=nearest] weapon.mainhand
execute as @e[type=interaction,tag=greenery.wide_flower_pot,distance=..5] if data entity @s interaction as @s[distance=..5] at @s run kill @e[type=armor_stand,tag=greenery.wide_flower_pot,limit=1,sort=nearest]
execute as @e[type=interaction,tag=greenery.wide_flower_pot,distance=..5] if data entity @s interaction as @s[distance=..5] at @s run tag @s remove greenery.wfp_filled
execute as @e[type=interaction,tag=greenery.wide_flower_pot,distance=..5] if data entity @s interaction as @s[distance=..5] at @s run data remove entity @s interaction

tag @s remove greenery.wfp_this