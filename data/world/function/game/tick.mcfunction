function world:game/check_disconnects

execute if score #state gs_state matches 1 if score #timer gs_timer matches 1.. run scoreboard players remove #timer gs_timer 1
execute if score #state gs_state matches 1 if score #timer gs_timer matches 1.. run function world:game/lock_players
execute if score #state gs_state matches 1 if score #timer gs_timer matches ..0 run function world:game/go_live

execute if score #state gs_state matches 2 run function world:game/check_deaths

execute if score #state gs_state matches 1.. as @a[tag=!gs_active,tag=!gs_forced_spec] run gamemode spectator
execute if score #state gs_state matches 1.. run tag @a[tag=!gs_active,tag=!gs_forced_spec] add gs_forced_spec
