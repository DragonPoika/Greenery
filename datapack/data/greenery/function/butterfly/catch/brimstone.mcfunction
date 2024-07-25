kill @e[limit=2,type=#greenery:butterfly,tag=greenery.butterfly,sort=nearest]
loot spawn ~ ~ ~ loot greenery:items/butterfly/brimstone

say @e[type=#greenery:butterfly,limit=2,tag=greenery.butterfly]
advancement grant @p[predicate=greenery:holding/butterfly_net] only greenery:survival/catch_butterfly