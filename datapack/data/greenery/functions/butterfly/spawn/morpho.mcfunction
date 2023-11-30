summon item_display ~ ~ ~ {Tags:[greenery.butterfly_morpho],transformation:{scale:[1.0f,1.0f,1.0f]},item:{id:"minecraft:leather_horse_armor",Count:1b,tag:{CustomModelData:795000}}}
ride @e[type=item_display,limit=1,sort=nearest,tag=greenery.butterfly_morpho] mount @s
effect give @s invisibility infinite 1 true