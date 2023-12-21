tag @s add greenery.checked
execute if entity @p[predicate=greenery:holding/worm] run tag @s add greenery.bobber_has_worm
execute if entity @p[predicate=greenery:holding/worm] run advancement grant @p only greenery:survival/fish_with_worm