summon item_display ~ ~ ~ {Tags:[greenery.butterfly_brimstone,greenery.butterfly,greenery.butterfly_part],item:{id:"minecraft:leather_horse_armor",count:1,components:{"minecraft:custom_model_data":795012,"dyed_color":0}}}
ride @n[type=item_display,tag=greenery.butterfly_brimstone,tag=greenery.butterfly] mount @s
effect give @s invisibility infinite 1 true
data merge entity @s {Tags:["greenery.butterfly_part"],Silent:1b}