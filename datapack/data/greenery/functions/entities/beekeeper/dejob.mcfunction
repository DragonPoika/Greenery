############################################################
# Sets the initial trades of a beekeeper
############################################################

tag @s remove greenery.beekeeper
team leave @s
item replace entity @s armor.head with air
item replace entity @s weapon.mainhand with air
execute if data entity @s {CustomName:'{"translate":"entity.greenery.beekeeper"}'} run data modify entity @s CustomName set value '{"text":""}'