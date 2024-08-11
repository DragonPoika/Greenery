setblock ~ ~ ~ air
summon armor_stand ~ ~ ~ {Tags:["greenery.butterfly_jar"],Invisible:0b}
data modify entity @e[type=armor_stand,tag=greenery.butterfly_jar,limit=1,sort=nearest] HandItems[0] set from entity @e[type=item_display,limit=1,sort=nearest] item
data modify entity @e[type=armor_stand,tag=greenery.butterfly_jar,limit=1,sort=nearest] HandItems[0].components merge value {"minecraft:container":[{item:{count:1,id:"minecraft:furnace"},slot:0}]}
data modify entity @e[type=armor_stand,tag=greenery.butterfly_jar,limit=1,sort=nearest] HandItems[0].components."minecraft:custom_data" merge value {jar_content:[]}
data modify entity @e[type=armor_stand,tag=greenery.butterfly_jar,limit=1,sort=nearest] HandItems[0].components."minecraft:container"[0].item.components."minecraft:custom_data".jar_content merge value {jar_content:[]}
data modify entity @e[type=armor_stand,tag=greenery.butterfly_jar,limit=1,sort=nearest] HandItems[0].components."minecraft:container"[0].item merge from entity @e[type=armor_stand,tag=greenery.butterfly_jar,limit=1,sort=nearest] HandItems[0]
data modify entity @e[type=armor_stand,tag=greenery.butterfly_jar,limit=1,sort=nearest] HandItems[0].components."minecraft:custom_data".jar_content set from entity @e[type=marker,tag=greenery.butterfly_jar,limit=1,sort=nearest] data.jar_content
data modify entity @e[type=armor_stand,tag=greenery.butterfly_jar,limit=1,sort=nearest] HandItems[0].components."minecraft:container"[0].item.components."minecraft:custom_data".jar_content set from entity @e[type=marker,tag=greenery.butterfly_jar,limit=1,sort=nearest] data.jar_content
data modify entity @e[type=armor_stand,tag=greenery.butterfly_jar,limit=1,sort=nearest] HandItems[0].components."minecraft:custom_model_data" set value 795050
item replace entity @p[tag=greenery.pick_up] weapon.mainhand from entity @e[type=armor_stand,tag=greenery.butterfly_jar,limit=1,sort=nearest] weapon.mainhand
tag @p[tag=greenery.pick_up] remove greenery.pick_up
kill @e[type=armor_stand,tag=greenery.butterfly_jar,limit=1,sort=nearest]
kill @e[type=item_display,tag=greenery.butterfly_jar,limit=1,sort=nearest]
kill @e[type=marker,tag=greenery.butterfly_jar,limit=1,sort=nearest]
kill @e[type=interaction,tag=greenery.butterfly_jar,limit=1,sort=nearest]