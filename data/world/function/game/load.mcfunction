scoreboard objectives add gs_state dummy
scoreboard objectives add gs_timer dummy
scoreboard objectives add gs_round dummy
scoreboard objectives add gs_lives dummy
scoreboard objectives add gs_deaths deathCount
scoreboard objectives add gs_deaths_seen dummy
scoreboard objectives add gs_tmp dummy
scoreboard objectives add gs_cfg dummy
scoreboard objectives add gs_player_ctrl trigger

scoreboard players set #state gs_state 0
scoreboard players set #timer gs_timer 0
scoreboard players set #round gs_round 0
scoreboard players set #active_count gs_tmp 0
scoreboard players set #alive_count gs_tmp 0
scoreboard players set #positive_lives gs_tmp 0
scoreboard players set #slot_count gs_tmp 0
scoreboard players set #solo_enabled gs_cfg 0
scoreboard players set #solo_runtime gs_cfg 0
scoreboard players set #pause_timer gs_cfg 0
scoreboard players set #fail_msg_cd gs_cfg 0
scoreboard players set #dbg_verbose gs_cfg 0
scoreboard players set #prompt_cd gs_cfg 0

tag @a remove gs_active
tag @a remove gs_dead_this_round
tag @a remove gs_forced_spec
tag @a remove gs_slot1
tag @a remove gs_slot2
tag @a remove gs_exit_handled

scoreboard players set @a gs_player_ctrl 0
scoreboard players enable @a gs_player_ctrl
