tag @a remove gs_dead_this_round
execute as @a[tag=gs_active] if score @s gs_deaths > @s gs_deaths_seen run tag @s add gs_dead_this_round
execute if entity @a[tag=gs_active,tag=gs_dead_this_round] run function world:game/on_round_end
