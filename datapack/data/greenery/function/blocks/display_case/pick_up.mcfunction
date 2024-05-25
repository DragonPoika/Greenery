advancement revoke @s only greenery:util/blocks/display_case/pick_up
tag @s add greenery.pick_up
playsound minecraft:item.armor.equip_leather block @a ~ ~ ~ 1 1
execute as @e[type=interaction,tag=greenery.display_case,distance=..7] if data entity @s interaction at @s run function greenery:blocks/display_case/break