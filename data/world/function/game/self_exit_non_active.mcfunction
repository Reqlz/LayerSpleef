tag @s add gs_exit_handled
tag @s remove gs_queue
tag @s remove gs_forced_spec
tag @s remove gs_dead_this_round

effect clear @s resistance
gamemode adventure @s
tp @s 8 -40 8 0 0
title @s actionbar {"text":"Exited queue/spectator.","color":"yellow"}
