execute as @e[type=item,predicate=greenery:is_hoe_item] at @s run function greenery:replant/hoe_thing_i_dont_know_what_this_is
execute as @a at @s run function greenery:replant/block_check

execute as @e[type=fishing_bobber,tag=!greenery.checked] at @s run function greenery:fishing/bobber

execute as @a[scores={greenery.wfoas=0..}] at @s run function greenery:warped_fungus_on_a_stick

#Ticking Functions
    #Entities
        execute as @e[type=marker,tag=greenery.fishnet] at @s run function greenery:fishing_net/tick
        execute as @e[type=villager,tag=greenery.beekeeper] at @s run function greenery:entities/beekeeper/tick

execute as @e[type=bee,tag=!greenery.checked] at @s run function greenery:butterfly/check

scoreboard players reset @a greenery.wfoas