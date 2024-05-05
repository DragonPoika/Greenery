execute store result score @s greenery.seed_assortment_random run random value 1..6
execute if score @s greenery.seed_assortment_random matches 1 run setblock ~ ~1 ~ wheat[age=0]
execute if score @s greenery.seed_assortment_random matches 2 run setblock ~ ~1 ~ beetroots[age=0]
execute if score @s greenery.seed_assortment_random matches 3 run setblock ~ ~1 ~ carrots[age=0]
execute if score @s greenery.seed_assortment_random matches 4 run setblock ~ ~1 ~ potatoes[age=0]
execute if score @s greenery.seed_assortment_random matches 5 run setblock ~ ~1 ~ melon_stem[age=0]
execute if score @s greenery.seed_assortment_random matches 6 run setblock ~ ~1 ~ pumpkin_stem[age=0]
kill @s