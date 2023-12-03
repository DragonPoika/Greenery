############################################################
# Sets the initial trades of a beekeeper
############################################################

tag @s add greenery.beekeeper
tag @s add smithed.entity

item replace entity @s armor.head with minecraft:structure_block{CustomModelData:795002}
execute unless data entity @s CustomName run data modify entity @s CustomName set value '{"translate":"entity.greenery.beekeeper"}'
data modify entity @s ArmorDropChances set value [-10000.0f,-10000.0f,-10000.0f,-10000.0f]
data modify entity @s HandDropChances set value [-10000.0f,-10000.0f]


data modify entity @s Offers.Recipes set value [{buy:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:dirt",Count:1b},maxUses:16,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,xp:1},{buy:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:dirt",Count:1b},maxUses:3,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,xp:2}]


# Trade 1
loot replace entity @s weapon.mainhand 2 loot greenery:gameplay/trades/beekeeper/trade_1
data modify entity @s Offers.Recipes[0].buy set from entity @s HandItems[0]
data modify entity @s Offers.Recipes[0].sell set from entity @s HandItems[1]

# Trade 2
loot replace entity @s weapon.mainhand 2 loot greenery:gameplay/trades/beekeeper/trade_2
data modify entity @s Offers.Recipes[1].buy set from entity @s HandItems[0]
data modify entity @s Offers.Recipes[1].sell set from entity @s HandItems[1]

item replace entity @s weapon.mainhand with minecraft:structure_block{CustomModelData:795001}
item replace entity @s weapon.offhand with air