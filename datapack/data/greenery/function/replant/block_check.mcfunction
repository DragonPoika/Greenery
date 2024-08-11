execute if entity @s[scores={greenery.mined_wheat=1..},predicate=greenery:holding/replant] run function greenery:mined/wheat
execute if entity @s[scores={greenery.mined_wheat=1..}] run scoreboard players reset @s greenery.mined_wheat
execute if entity @s[scores={greenery.mined_carrots=1..},predicate=greenery:holding/replant] run function greenery:mined/carrots
execute if entity @s[scores={greenery.mined_carrots=1..}] run scoreboard players reset @s greenery.mined_carrots
execute if entity @s[scores={greenery.mined_potatoes=1..},predicate=greenery:holding/replant] run function greenery:mined/potatoes
execute if entity @s[scores={greenery.mined_potatoes=1..}] run scoreboard players reset @s greenery.mined_potatoes
execute if entity @s[scores={greenery.mined_beetroots=1..},predicate=greenery:holding/replant] run function greenery:mined/beetroots
execute if entity @s[scores={greenery.mined_beetroots=1..}] run scoreboard players reset @s greenery.mined_beetroots
execute if entity @s[scores={greenery.mined_nether_wart=1..},predicate=greenery:holding/replant] run function greenery:mined/nether_wart
execute if entity @s[scores={greenery.mined_nether_wart=1..}] run scoreboard players reset @s greenery.mined_nether_wart 