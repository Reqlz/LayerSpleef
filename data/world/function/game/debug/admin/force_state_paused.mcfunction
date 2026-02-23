scoreboard players set #active_count gs_tmp 0
execute as @a[tag=gs_active] run scoreboard players add #active_count gs_tmp 1

execute if score #active_count gs_tmp matches ..0 run tellraw @s {"text":"No active player to pause.","color":"red"}
execute if score #active_count gs_tmp matches 1.. run scoreboard players set #state gs_state 3
execute if score #active_count gs_tmp matches 1.. run scoreboard players set #pause_timer gs_cfg 600
execute if score #active_count gs_tmp matches 1.. run scoreboard players set #prompt_cd gs_cfg 0
execute if score #active_count gs_tmp matches 1.. run gamemode adventure @a[tag=gs_active]
execute if score #active_count gs_tmp matches 1.. as @a[tag=gs_active,limit=1] run function world:game/paused_alone_prompt
execute if score #active_count gs_tmp matches 1.. run tellraw @s {"text":"[admin] Forced paused-alone state.","color":"aqua"}
