execute as @e[type=item,predicate=greenery:is_hoe_item] at @s run function greenery:replant/hoe_thing_i_dont_know_what_this_is
execute as @a at @s run function greenery:replant/block_check

execute as @a[scores={greenery.wfoas=0..}] at @s run function greenery:warped_fungus_on_a_stick

#Ticking Functions
    # Entities
        execute as @e[type=villager,tag=greenery.beekeeper] at @s run function greenery:entities/beekeeper/tick
        execute as @e[type=bee,tag=!greenery.checked] at @s run function greenery:butterfly/check
        execute as @e[type=fishing_bobber,tag=!greenery.checked] at @s run function greenery:fishing/bobber
        execute as @a[scores={greenery.armor_stand_used=1..}] run execute as @e[type=armor_stand,tag=greenery.seed_assortment] at @s run function greenery:blocks/place_seed_assortment
    # Blocks
        execute as @e[type=item_display,tag=greenery.fishing_net] at @s run function greenery:blocks/fishing_net/tick
        execute as @e[type=item_display,tag=greenery.beehive] at @s unless block ~ ~-0.5 ~ minecraft:fletching_table run function greenery:blocks/beehive/break
        execute as @e[type=item_display,tag=greenery.beehive] at @s run function greenery:blocks/beehive/tick
        execute as @e[type=item_display,tag=greenery.hanging_flower_pot] at @s unless block ~ ~ ~ #minecraft:flower_pots run function greenery:blocks/hanging_flower_pot/break
        execute as @e[type=interaction,tag=greenery.wide_flower_pot] at @s run function greenery:blocks/wide_flower_pot/tick

scoreboard players reset @a greenery.wfoas