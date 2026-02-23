scoreboard players set #active_count gs_tmp 0
scoreboard players set #queue_count gs_tmp 0
execute as @a[tag=gs_active] run scoreboard players add #active_count gs_tmp 1
execute as @a[tag=gs_queue,gamemode=!spectator] run scoreboard players add #queue_count gs_tmp 1

tellraw @s ["",{"text":"[Admin Status] ","color":"aqua","bold":true},{"text":"state=","color":"gray"},{"score":{"name":"#state","objective":"gs_state"},"color":"yellow"},{"text":" timer=","color":"gray"},{"score":{"name":"#timer","objective":"gs_timer"},"color":"yellow"},{"text":" round=","color":"gray"},{"score":{"name":"#round","objective":"gs_round"},"color":"yellow"}]
tellraw @s ["",{"text":"solo_enabled=","color":"gray"},{"score":{"name":"#solo_enabled","objective":"gs_cfg"},"color":"yellow"},{"text":" solo_runtime=","color":"gray"},{"score":{"name":"#solo_runtime","objective":"gs_cfg"},"color":"yellow"},{"text":" pause_timer=","color":"gray"},{"score":{"name":"#pause_timer","objective":"gs_cfg"},"color":"yellow"}]
tellraw @s ["",{"text":"active_count=","color":"gray"},{"score":{"name":"#active_count","objective":"gs_tmp"},"color":"yellow"},{"text":" queue_count=","color":"gray"},{"score":{"name":"#queue_count","objective":"gs_tmp"},"color":"yellow"}]
tellraw @s ["",{"text":"Active: ","color":"gray"},{"selector":"@a[tag=gs_active]","color":"green"}]
tellraw @s ["",{"text":"Queued: ","color":"gray"},{"selector":"@a[tag=gs_queue,gamemode=!spectator]","color":"yellow"}]
