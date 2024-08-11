summon item_display ~ ~ ~ {Tags:[greenery.butterfly_morpho,greenery.butterfly,greenery.butterfly_part],item:{id:"minecraft:leather_horse_armor",count:1,components:{"minecraft:custom_model_data":795011,"dyed_color":0}},teleport_duration:10}
ride @e[type=item_display,limit=1,sort=nearest,tag=greenery.butterfly_morpho,tag=greenery.butterfly] mount @s
effect give @s invisibility infinite 1 true
data merge entity @s {Tags:["greenery.butterfly_part"],Silent:1b}