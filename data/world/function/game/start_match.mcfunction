execute if score #state gs_state matches 0 run tag @a remove gs_active
execute if score #state gs_state matches 0 run tag @a remove gs_dead_this_round
execute if score #state gs_state matches 0 run tag @a remove gs_forced_spec

execute if score #state gs_state matches 0 run tag @a[tag=team_red,limit=1,sort=random] add gs_active
execute if score #state gs_state matches 0 run tag @a[tag=team_green,tag=!gs_active,limit=1,sort=random] add gs_active

execute if score #state gs_state matches 0 run scoreboard players set #active_count gs_tmp 0
execute if score #state gs_state matches 0 as @a[tag=gs_active] run scoreboard players add #active_count gs_tmp 1

execute if score #state gs_state matches 0 if score #active_count gs_tmp matches 2 run function world:game/start_match_success
execute if score #state gs_state matches 0 unless score #active_count gs_tmp matches 2 run function world:game/start_match_failed
