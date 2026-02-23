execute if score #state gs_state matches 3 unless entity @a[tag=gs_active] run function world:game/end_match
execute if score #state gs_state matches 3 run gamemode adventure @a[tag=gs_active]

execute if score #state gs_state matches 3 if score #prompt_cd gs_cfg matches 1.. run scoreboard players remove #prompt_cd gs_cfg 1
execute if score #state gs_state matches 3 if score #pause_timer gs_cfg matches 1.. if score #prompt_cd gs_cfg matches ..0 as @a[tag=gs_active,limit=1] run function world:game/paused_alone_prompt
execute if score #state gs_state matches 3 if score #pause_timer gs_cfg matches 1.. if score #prompt_cd gs_cfg matches ..0 run scoreboard players set #prompt_cd gs_cfg 40

execute if score #state gs_state matches 3 if score #pause_timer gs_cfg matches ..0 run tellraw @a[tag=gs_active] {"text":"No choice received. Exiting match.","color":"yellow","bold":true}
execute if score #state gs_state matches 3 if score #pause_timer gs_cfg matches ..0 run function world:game/end_match
