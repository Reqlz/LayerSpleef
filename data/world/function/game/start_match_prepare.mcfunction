tag @a remove gs_active
tag @a remove gs_dead_this_round
tag @a remove gs_forced_spec
tag @a remove gs_slot1
tag @a remove gs_slot2
tag @a remove gs_exit_handled

tag @a[tag=gs_queue,gamemode=!spectator,limit=1,sort=arbitrary] add gs_slot1
tag @a[tag=gs_queue,gamemode=!spectator,tag=!gs_slot1,limit=1,sort=arbitrary] add gs_slot2

scoreboard players set #slot_count gs_tmp 0
execute as @a[tag=gs_slot1] run scoreboard players add #slot_count gs_tmp 1
execute as @a[tag=gs_slot2] run scoreboard players add #slot_count gs_tmp 1

execute if score #slot_count gs_tmp matches 2.. run function world:game/start_match_pair
execute if score #slot_count gs_tmp matches 1 if score #solo_enabled gs_cfg matches 1 run function world:game/start_match_solo
execute if score #slot_count gs_tmp matches 1 if score #solo_enabled gs_cfg matches 0 run function world:game/start_match_failed
execute if score #slot_count gs_tmp matches ..0 run function world:game/start_match_failed
