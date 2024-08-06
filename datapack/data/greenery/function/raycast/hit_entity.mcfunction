#Mark the ray has having found an entity.

execute if entity @e[type=item_display,limit=1,sort=nearest,distance=..1,tag=greenery.butterfly_monarch] run function greenery:butterfly/catch/monarch
execute if entity @e[type=item_display,limit=1,sort=nearest,distance=..1,tag=greenery.butterfly_morpho] run function greenery:butterfly/catch/morpho
execute if entity @e[type=item_display,limit=1,sort=nearest,distance=..1,tag=greenery.butterfly_brimstone] run function greenery:butterfly/catch/brimstone
execute if entity @e[type=item_display,limit=1,sort=nearest,distance=..1,tag=greenery.butterfly_peacock] run function greenery:butterfly/catch/peacock
execute if entity @e[type=item_display,limit=1,sort=nearest,distance=..1,tag=greenery.butterfly_rustic] run function greenery:butterfly/catch/rustic
execute if entity @e[type=item_display,limit=1,sort=nearest,distance=..1,tag=greenery.butterfly_jewel] run function greenery:butterfly/catch/jewel

scoreboard players set #greenery.hit greenery.raytemp 1
