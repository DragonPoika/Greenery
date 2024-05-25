advancement revoke @s only greenery:util/blocks/butterfly_jar/pick_up
tag @s add greenery.pick_up
playsound minecraft:item.armor.equip_leather block @a ~ ~ ~ 1 1
execute as @e[type=interaction,tag=greenery.butterfly_jar,distance=..7] if data entity @s interaction at @s run function greenery:blocks/butterfly_jar/break