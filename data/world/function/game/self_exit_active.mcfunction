tag @s add gs_exit_handled
tag @s remove gs_active
tag @s remove gs_queue
tag @s remove gs_dead_this_round

effect clear @s resistance
gamemode adventure @s
tp @s 8 -40 8 0 0
title @s actionbar {"text":"Exited current match.","color":"yellow","bold":true}

scoreboard players set #active_count gs_tmp 0
execute as @a[tag=gs_active] run scoreboard players add #active_count gs_tmp 1

execute if score #active_count gs_tmp matches ..0 run function world:game/end_match

execute if score #active_count gs_tmp matches 1 run scoreboard players set #state gs_state 3
execute if score #active_count gs_tmp matches 1 run scoreboard players set #pause_timer gs_cfg 600
execute if score #active_count gs_tmp matches 1 run scoreboard players set #prompt_cd gs_cfg 0
execute if score #active_count gs_tmp matches 1 run scoreboard players set #solo_runtime gs_cfg 0
execute if score #active_count gs_tmp matches 1 run gamemode adventure @a[tag=gs_active]
execute if score #active_count gs_tmp matches 1 as @a[tag=gs_active,limit=1] run function world:game/paused_alone_prompt
execute if score #active_count gs_tmp matches 1 run tellraw @a[tag=gs_active] {"text":"Opponent exited. Choose continue solo or exit.","color":"yellow","bold":true}
