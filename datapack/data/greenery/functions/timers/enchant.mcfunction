scoreboard players add @s greenery.ench_timer 1
execute if score @s greenery.ench_timer matches 1 run playsound minecraft:block.beacon.activate block @a ~ ~ ~ 1 2
particle minecraft:enchant ~ ~0.6 ~ 0 0.01 0 0.2 1

execute if score @s greenery.ench_timer matches 60.. run playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 1 1
execute if score @s greenery.ench_timer matches 60.. run data modify entity @s Item.tag.display.Lore append from entity @e[type=item,scores={greenery.ench_timer=0},limit=1,sort=nearest] Item.tag.display.Lore[0]
execute if score @s greenery.ench_timer matches 60.. run data merge entity @s {Item:{tag:{greenerynery:[{Enchantment:"replant"}]}}}
execute if score @s greenery.ench_timer matches 60.. unless data entity @s Item.tag.Enchantments run data merge entity @s {Item:{tag:{Enchantments:[{}]}}}
execute if score @s greenery.ench_timer matches 60.. run kill @e[type=item,scores={greenery.ench_timer=0},limit=1,sort=nearest]
execute if score @s greenery.ench_timer matches 60.. run scoreboard players reset @s greenery.ench_timer