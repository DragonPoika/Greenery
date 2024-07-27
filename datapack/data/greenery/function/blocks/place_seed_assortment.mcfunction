execute store result score @s greenery.seed_assortment_random run random value 1..4
execute if score @s greenery.seed_assortment_random matches 1 run fill ~ ~1 ~ ~ ~1 ~ wheat[age=0] replace #air
execute if score @s greenery.seed_assortment_random matches 2 run fill ~ ~1 ~ ~ ~1 ~ beetroots[age=0] replace #air
execute if score @s greenery.seed_assortment_random matches 3 run fill ~ ~1 ~ ~ ~1 ~ carrots[age=0] replace #air
execute if score @s greenery.seed_assortment_random matches 4 run fill ~ ~1 ~ ~ ~1 ~ potatoes[age=0] replace #air
kill @s