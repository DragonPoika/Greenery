execute unless score @s greenery.ench_timer matches 0.. if block ~ ~-1 ~ anvil positioned ~-0.9999 ~-0.9999 ~-0.9999 as @e[type=item,nbt={Item:{tag:{greenery:[{id:"replant_enchant"}]}}},dx=0,dy=0,dz=0] positioned ~0.9999 ~0.9999 ~0.9999 if entity @s[dx=0,dy=0,dz=0] run scoreboard players set @s greenery.ench_timer 0
execute unless score @s greenery.ench_timer matches 0.. if block ~ ~-1 ~ anvil positioned ~-0.9999 ~-0.9999 ~-0.9999 as @e[type=item,nbt={Item:{tag:{greenery:[{id:"replant_enchant"}]}}},dx=0,dy=0,dz=0] positioned ~0.9999 ~0.9999 ~0.9999 if entity @s[dx=0,dy=0,dz=0] run scoreboard players set @e[type=item,predicate=greenery:is_hoe_item,limit=1,sort=nearest] greenery.ench_timer 0
execute if entity @s[scores={greenery.ench_timer=0..}] run function greenery:timers/enchant