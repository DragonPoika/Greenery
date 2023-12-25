summon item_display ~ ~ ~ {Tags:[greenery.butterfly_morpho,greenery.butterfly],transformation:{scale:[1.0f,1.0f,1.0f]},item:{id:"minecraft:leather_horse_armor",Count:1b,tag:{CustomModelData:795011}}}
ride @e[type=item_display,limit=1,sort=nearest,tag=greenery.butterfly_morpho,tag=greenery.butterfly] mount @s
effect give @s invisibility infinite 1 true