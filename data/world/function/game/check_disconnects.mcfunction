scoreboard players set #active_count gs_tmp 0
execute if score #state gs_state matches 1.. as @a[tag=gs_active] run scoreboard players add #active_count gs_tmp 1
execute if score #state gs_state matches 1.. if score #active_count gs_tmp matches ..1 run function world:game/end_match
