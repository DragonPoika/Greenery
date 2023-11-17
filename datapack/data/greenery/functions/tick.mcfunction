execute as @e[type=item,predicate=greenery:is_hoe_item] unless score @s greenery.ench_timer matches 0.. at @s if block ~ ~-1 ~ anvil positioned ~-0.9999 ~-0.9999 ~-0.9999 as @e[type=item,nbt={Item:{tag:{greenery:[{id:"replant_enchant"}]}}},dx=0,dy=0,dz=0] positioned ~0.9999 ~0.9999 ~0.9999 if entity @s[dx=0,dy=0,dz=0] run scoreboard players set @s greenery.ench_timer 0
execute as @e[type=item,predicate=greenery:is_hoe_item] unless score @s greenery.ench_timer matches 0.. at @s if block ~ ~-1 ~ anvil positioned ~-0.9999 ~-0.9999 ~-0.9999 as @e[type=item,nbt={Item:{tag:{greenery:[{id:"replant_enchant"}]}}},dx=0,dy=0,dz=0] positioned ~0.9999 ~0.9999 ~0.9999 if entity @s[dx=0,dy=0,dz=0] run scoreboard players set @e[type=item,predicate=greenery:is_hoe_item,limit=1,sort=nearest] greenery.ench_timer 0
execute as @e[type=item,predicate=greenery:is_hoe_item,scores={greenery.ench_timer=0..}] at @s run function greenery:timers/enchant

execute as @a[scores={greenery.mined_wheat=1..},predicate=greenery:holding_replant] at @s run function greenery:mined/wheat
execute as @a[scores={greenery.mined_wheat=1..}] at @s run scoreboard players reset @s greenery.mined_wheat
execute as @a[scores={greenery.mined_carrots=1..},predicate=greenery:holding_replant] at @s run function greenery:mined/carrots
execute as @a[scores={greenery.mined_carrots=1..}] at @s run scoreboard players reset @s greenery.mined_carrots
execute as @a[scores={greenery.mined_potatoes=1..},predicate=greenery:holding_replant] at @s run function greenery:mined/potatoes
execute as @a[scores={greenery.mined_potatoes=1..}] at @s run scoreboard players reset @s greenery.mined_potatoes
execute as @a[scores={greenery.mined_beetroots=1..},predicate=greenery:holding_replant] at @s run function greenery:mined/beetroots
execute as @a[scores={greenery.mined_beetroots=1..}] at @s run scoreboard players reset @s greenery.mined_beetroots
execute as @a[scores={greenery.mined_nether_wart=1..},predicate=greenery:holding_replant] at @s run function greenery:mined/nether_wart
execute as @a[scores={greenery.mined_nether_wart=1..}] at @s run scoreboard players reset @s greenery.mined_nether_wart