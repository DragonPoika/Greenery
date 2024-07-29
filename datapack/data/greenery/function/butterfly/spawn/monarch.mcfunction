summon item_display ~ ~ ~ {Tags:[greenery.butterfly_monarch,greenery.butterfly],item:{id:"minecraft:leather_horse_armor",count:1,components:{"minecraft:custom_model_data":795010,"dyed_color":0}}}
ride @e[type=item_display,limit=1,sort=nearest,tag=greenery.butterfly_monarch,tag=greenery.butterfly] mount @s
effect give @s invisibility infinite 1 true