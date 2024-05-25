setblock ~ ~ ~ air
summon armor_stand ~ ~ ~ {Tags:["greenery.display_case"],Invisible:1b}
data modify entity @e[type=armor_stand,tag=greenery.display_case,limit=1,sort=nearest] HandItems[0] set from entity @e[type=item_display,limit=1,sort=nearest] item
data modify entity @e[type=armor_stand,tag=greenery.display_case,limit=1,sort=nearest] HandItems[0].tag merge value {BlockEntityTag:{Items:[{Slot:0b}]}}
data modify entity @e[type=armor_stand,tag=greenery.display_case,limit=1,sort=nearest] HandItems[0].tag merge value {case_content:[]}
data modify entity @e[type=armor_stand,tag=greenery.display_case,limit=1,sort=nearest] HandItems[0].tag.BlockEntityTag.Items[0].tag merge value {case_content:[]}
data modify entity @e[type=armor_stand,tag=greenery.display_case,limit=1,sort=nearest] HandItems[0].tag.BlockEntityTag.Items[0] merge from entity @e[type=armor_stand,tag=greenery.display_case,limit=1,sort=nearest] HandItems[0]
data modify entity @e[type=armor_stand,tag=greenery.display_case,limit=1,sort=nearest] HandItems[0].tag.case_content set from entity @e[type=marker,tag=greenery.display_case,limit=1,sort=nearest] data.case_content
data modify entity @e[type=armor_stand,tag=greenery.display_case,limit=1,sort=nearest] HandItems[0].tag.BlockEntityTag.Items[0].tag.case_content set from entity @e[type=marker,tag=greenery.display_case,limit=1,sort=nearest] data.case_content
item replace entity @p[tag=greenery.pick_up] weapon.mainhand from entity @e[type=armor_stand,tag=greenery.display_case,limit=1,sort=nearest] weapon.mainhand
tag @p[tag=greenery.pick_up] remove greenery.pick_up
kill @e[type=armor_stand,tag=greenery.display_case,limit=1,sort=nearest]
kill @e[type=item_display,tag=greenery.display_case,limit=1,sort=nearest]
kill @e[type=marker,tag=greenery.display_case,limit=1,sort=nearest]
kill @e[type=interaction,tag=greenery.display_case,limit=1,sort=nearest]