execute if entity @s[type=item_display] unless entity @e[type=bee,distance=..1,tag=greenery.butterfly_part] run kill @s
execute if entity @s[type=bee] unless entity @e[type=item_display,distance=..1,tag=greenery.butterfly_part] run tp @s ~ -200 ~
execute if entity @s[type=bee] unless entity @e[type=item_display,distance=..1,tag=greenery.butterfly_part] run kill @s
# say @n[type=!item_display,distance=..1]
data merge entity @s {TicksSincePollination:0,HasNectar:0b}