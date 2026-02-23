tellraw @s ["",{"text":"[Game Debug] ","color":"aqua","bold":true},{"text":"Player Controls","color":"white"}]
tellraw @s ["",{"text":"- Emergency self-exit: ","color":"gray"},{"text":"/trigger gs_player_ctrl set 1","color":"yellow"}]
tellraw @s ["",{"text":"- Status: ","color":"gray"},{"text":"[Show Status]","color":"green","click_event":{"action":"run_command","command":"/function world:game/debug/player_status"}}]
tellraw @s ["",{"text":"- If alone after opponent exits, use ","color":"gray"},{"text":"/trigger gs_player_ctrl set 2","color":"yellow"},{"text":" to continue solo.","color":"gray"}]
