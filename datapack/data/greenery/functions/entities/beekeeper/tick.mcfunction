item replace entity @s weapon.mainhand with leather_horse_armor{CustomModelData:795001}
item replace entity @s armor.head with leather_horse_armor{CustomModelData:795002}
# data merge entity @s {Brain:{memories:{"minecraft:job_site":{value:{pos:[I;-7,73,-10],dimension:"minecraft:overworld"}}}}}

# Leveling up
execute if entity @s[nbt={VillagerData:{level:2}},tag=!greenery.beekeeper.level_2] run function greenery:entities/beekeeper/level_up/2
execute if entity @s[nbt={VillagerData:{level:3}},tag=!greenery.beekeeper.level_3] run function greenery:entities/beekeeper/level_up/3
execute if entity @s[nbt={VillagerData:{level:4}},tag=!greenery.beekeeper.level_4] run function greenery:entities/beekeeper/level_up/4
execute if entity @s[nbt={VillagerData:{level:5}},tag=!greenery.beekeeper.level_5] run function greenery:entities/beekeeper/level_up/5