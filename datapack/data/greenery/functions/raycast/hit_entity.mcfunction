#Mark the ray has having found an entity.

execute if entity @e[type=item_display,limit=1,sort=nearest,tag=greenery.monarch_butterfly] run function greenery:butterfly/catch/monarch
execute if entity @e[type=item_display,limit=1,sort=nearest,tag=greenery.morpho_butterfly] run function greenery:butterfly/catch/morpho
execute if entity @e[type=item_display,limit=1,sort=nearest,tag=greenery.brimstone_butterfly] run function greenery:butterfly/catch/brimstone

scoreboard players set #greenery.hit greenery.raytemp 1