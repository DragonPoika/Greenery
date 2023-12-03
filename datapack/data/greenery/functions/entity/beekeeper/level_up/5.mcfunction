############################################################
# Commands to run when the villager levels up
############################################################

tag @s add greenery.beekeeper.level_5

data remove entity @s Offers.Recipes[8]
data remove entity @s Offers.Recipes[8]
data remove entity @s Offers.Recipes[8]

data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:dirt",Count:1b},maxUses:16,uses:0,priceMultiplier:0.2f,specialPrice:0,demand:0,xp:30}
data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:dirt",Count:1b},maxUses:3,uses:0,priceMultiplier:0.2f,specialPrice:0,demand:0,xp:30}

# Trade 9
loot replace entity @s weapon.mainhand 2 loot greenery:gameplay/trades/beekeeper/trade_9
data modify entity @s Offers.Recipes[-2].buy set from entity @s HandItems[0]
data modify entity @s Offers.Recipes[-2].sell set from entity @s HandItems[1]

# Trade 10
loot replace entity @s weapon.mainhand 2 loot greenery:gameplay/trades/beekeeper/trade_10
data modify entity @s Offers.Recipes[-1].buy set from entity @s HandItems[0]
data modify entity @s Offers.Recipes[-1].sell set from entity @s HandItems[1]

item replace entity @s weapon.mainhand with minecraft:structure_block{CustomModelData:795001}
item replace entity @s weapon.offhand with air