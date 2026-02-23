tag @a remove gs_slot1
tag @a remove gs_slot2
tag @a remove gs_active

execute if score #fail_msg_cd gs_cfg matches ..0 run tellraw @a {"text":"Match start failed: need 2 queued players, or enable solo mode for 1 player.","color":"red","bold":true}
execute if score #fail_msg_cd gs_cfg matches ..0 run scoreboard players set #fail_msg_cd gs_cfg 40
