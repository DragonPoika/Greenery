advancement revoke @s only greenery:util/blocks/display_case/put_in
tag @s add greenery.put_in
execute as @e[type=interaction,tag=greenery.display_case,distance=..7] if data entity @s interaction at @s as @e[type=item_display,tag=greenery.display_case,limit=1,sort=nearest] if data entity @s item:{components:{"minecraft:custom_model_data":795004}}} run tag @p[tag=greenery.put_in] remove greenery.put_in
execute as @e[type=interaction,tag=greenery.display_case,distance=..7] if data entity @s interaction at @s as @e[type=item_display,tag=greenery.display_case,limit=1,sort=nearest] if data entity @s item:{components:{"minecraft:custom_model_data":795004}}} run return 0
execute as @e[type=interaction,tag=greenery.display_case,distance=..7] if data entity @s interaction at @s as @e[type=item_display,tag=greenery.display_case,limit=1,sort=nearest] at @s run data modify entity @e[type=marker,tag=greenery.display_case,limit=1,sort=nearest] data.case_content append from entity @p[tag=greenery.put_in] SelectedItem
execute as @e[type=interaction,tag=greenery.display_case,distance=..7] if data entity @s interaction at @s as @e[type=item_display,tag=greenery.display_case,limit=1,sort=nearest] at @s run data modify entity @e[type=marker,tag=greenery.display_case,limit=1,sort=nearest] data.case_content[0].Count set value 1b
execute as @e[type=interaction,tag=greenery.display_case,distance=..7] if data entity @s interaction at @s as @e[type=item_display,tag=greenery.display_case,limit=1,sort=nearest] at @s run data modify entity @e[type=marker,tag=greenery.display_case,limit=1,sort=nearest] data.case_content[1].Count set value 1b
execute as @e[type=interaction,tag=greenery.display_case,distance=..7] if data entity @s interaction at @s as @e[type=item_display,tag=greenery.display_case,limit=1,sort=nearest] at @s run data modify entity @e[type=marker,tag=greenery.display_case,limit=1,sort=nearest] data.case_content[2].Count set value 1b
execute as @e[type=interaction,tag=greenery.display_case,distance=..7] if data entity @s interaction at @s as @e[type=item_display,tag=greenery.display_case,limit=1,sort=nearest] at @s run data modify entity @e[type=marker,tag=greenery.display_case,limit=1,sort=nearest] data.case_content[3].Count set value 1b
execute as @e[type=interaction,tag=greenery.display_case,distance=..7] if data entity @s interaction at @s as @e[type=item_display,tag=greenery.display_case,limit=1,sort=nearest] if data entity @s item:{components:{"minecraft:custom_model_data":795003}}} run item modify entity @p[tag=greenery.put_in] weapon.mainhand greenery:remove_count
execute as @e[type=interaction,tag=greenery.display_case,distance=..7] if data entity @s interaction at @s as @e[type=item_display,tag=greenery.display_case,limit=1,sort=nearest] if data entity @s item:{components:{"minecraft:custom_model_data":795003}}} run playsound minecraft:entity.item_frame.add_item block @a ~ ~ ~ 1 1
execute as @e[type=interaction,tag=greenery.display_case,distance=..7] if data entity @s interaction at @s as @e[type=item_display,tag=greenery.display_case,limit=1,sort=nearest] if data entity @s item:{components:{"minecraft:custom_model_data":795003}}} run data merge entity @s item:{components:{"minecraft:custom_model_data":795004}}}
execute as @e[type=interaction,tag=greenery.display_case,distance=..7] if data entity @s interaction at @s as @e[type=item_display,tag=greenery.display_case,limit=1,sort=nearest] if data entity @s item:{components:{"minecraft:custom_model_data":795002}}} run item modify entity @p[tag=greenery.put_in] weapon.mainhand greenery:remove_count
execute as @e[type=interaction,tag=greenery.display_case,distance=..7] if data entity @s interaction at @s as @e[type=item_display,tag=greenery.display_case,limit=1,sort=nearest] if data entity @s item:{components:{"minecraft:custom_model_data":795002}}} run playsound minecraft:entity.item_frame.add_item block @a ~ ~ ~ 1 1
execute as @e[type=interaction,tag=greenery.display_case,distance=..7] if data entity @s interaction at @s as @e[type=item_display,tag=greenery.display_case,limit=1,sort=nearest] if data entity @s item:{components:{"minecraft:custom_model_data":795002}}} run data merge entity @s item:{components:{"minecraft:custom_model_data":795003}}}
execute as @e[type=interaction,tag=greenery.display_case,distance=..7] if data entity @s interaction at @s as @e[type=item_display,tag=greenery.display_case,limit=1,sort=nearest] if data entity @s item:{components:{"minecraft:custom_model_data":795001}}} run item modify entity @p[tag=greenery.put_in] weapon.mainhand greenery:remove_count
execute as @e[type=interaction,tag=greenery.display_case,distance=..7] if data entity @s interaction at @s as @e[type=item_display,tag=greenery.display_case,limit=1,sort=nearest] if data entity @s item:{components:{"minecraft:custom_model_data":795001}}} run playsound minecraft:entity.item_frame.add_item block @a ~ ~ ~ 1 1
execute as @e[type=interaction,tag=greenery.display_case,distance=..7] if data entity @s interaction at @s as @e[type=item_display,tag=greenery.display_case,limit=1,sort=nearest] if data entity @s item:{components:{"minecraft:custom_model_data":795001}}} run data merge entity @s item:{components:{"minecraft:custom_model_data":795002}}}
execute as @e[type=interaction,tag=greenery.display_case,distance=..7] if data entity @s interaction at @s as @e[type=item_display,tag=greenery.display_case,limit=1,sort=nearest] if data entity @s item:{components:{"minecraft:custom_model_data":795000}}} run item modify entity @p[tag=greenery.put_in] weapon.mainhand greenery:remove_count
execute as @e[type=interaction,tag=greenery.display_case,distance=..7] if data entity @s interaction at @s as @e[type=item_display,tag=greenery.display_case,limit=1,sort=nearest] if data entity @s item:{components:{"minecraft:custom_model_data":795000}}} run playsound minecraft:entity.item_frame.add_item block @a ~ ~ ~ 1 1
execute as @e[type=interaction,tag=greenery.display_case,distance=..7] if data entity @s interaction at @s as @e[type=item_display,tag=greenery.display_case,limit=1,sort=nearest] if data entity @s item:{components:{"minecraft:custom_model_data":795000}}} run data merge entity @s item:{components:{"minecraft:custom_model_data":795001}}}
execute as @e[type=interaction,tag=greenery.display_case,distance=..7] if data entity @s interaction run data remove entity @s interaction
tag @s remove greenery.put_in