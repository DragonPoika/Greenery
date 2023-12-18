setblock ~ ~ ~ air
summon armor_stand ~ ~ ~ {Tags:["greenery.butterfly_jar"],Invisible:1b}
data modify entity @e[type=armor_stand,tag=greenery.butterfly_jar,limit=1,sort=nearest] HandItems[0] set from entity @e[type=item_display,limit=1,sort=nearest] item
data modify entity @e[type=armor_stand,tag=greenery.butterfly_jar,limit=1,sort=nearest] HandItems[0].tag merge value {BlockEntityTag:{Items:[{Slot:0b}]}}
data modify entity @e[type=armor_stand,tag=greenery.butterfly_jar,limit=1,sort=nearest] HandItems[0].tag merge value {jar_content:[]}
data modify entity @e[type=armor_stand,tag=greenery.butterfly_jar,limit=1,sort=nearest] HandItems[0].tag.BlockEntityTag.Items[0].tag merge value {jar_content:[]}
data modify entity @e[type=armor_stand,tag=greenery.butterfly_jar,limit=1,sort=nearest] HandItems[0].tag.BlockEntityTag.Items[0] merge from entity @e[type=armor_stand,tag=greenery.butterfly_jar,limit=1,sort=nearest] HandItems[0]
data modify entity @e[type=armor_stand,tag=greenery.butterfly_jar,limit=1,sort=nearest] HandItems[0].tag.jar_content set from entity @e[type=marker,tag=greenery.butterfly_jar,limit=1,sort=nearest] data.jar_content
data modify entity @e[type=armor_stand,tag=greenery.butterfly_jar,limit=1,sort=nearest] HandItems[0].tag.BlockEntityTag.Items[0].tag.jar_content set from entity @e[type=marker,tag=greenery.butterfly_jar,limit=1,sort=nearest] data.jar_content
item replace entity @p[tag=greenery.pick_up] weapon.mainhand from entity @e[type=armor_stand,tag=greenery.butterfly_jar,limit=1,sort=nearest] weapon.mainhand
tag @p[tag=greenery.pick_up] remove greenery.pick_up
kill @e[type=armor_stand,tag=greenery.butterfly_jar,limit=1,sort=nearest]
kill @e[type=item_display,tag=greenery.butterfly_jar,limit=1,sort=nearest]
kill @e[type=marker,tag=greenery.butterfly_jar,limit=1,sort=nearest]
kill @e[type=interaction,tag=greenery.butterfly_jar,limit=1,sort=nearest]