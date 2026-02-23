tellraw @s ["",{"text":"[Game Status] ","color":"aqua","bold":true},{"text":"state=","color":"gray"},{"score":{"name":"#state","objective":"gs_state"},"color":"yellow"},{"text":" timer=","color":"gray"},{"score":{"name":"#timer","objective":"gs_timer"},"color":"yellow"},{"text":" round=","color":"gray"},{"score":{"name":"#round","objective":"gs_round"},"color":"yellow"}]
tellraw @s ["",{"text":"solo_enabled=","color":"gray"},{"score":{"name":"#solo_enabled","objective":"gs_cfg"},"color":"yellow"},{"text":" solo_runtime=","color":"gray"},{"score":{"name":"#solo_runtime","objective":"gs_cfg"},"color":"yellow"}]
execute as @s[tag=gs_queue] run tellraw @s {"text":"queue: YES","color":"green"}
execute as @s[tag=!gs_queue] run tellraw @s {"text":"queue: NO","color":"red"}
execute as @s[tag=gs_active] run tellraw @s ["",{"text":"active: YES, lives=","color":"green"},{"score":{"name":"@s","objective":"gs_lives"},"color":"yellow","bold":true}]
execute as @s[tag=!gs_active] run tellraw @s {"text":"active: NO","color":"gray"}
