scoreboard players set #state gs_state 0
scoreboard players set #timer gs_timer 0
scoreboard players set #pause_timer gs_cfg 0
scoreboard players set #prompt_cd gs_cfg 0
scoreboard players set #solo_runtime gs_cfg 0

effect clear @a[tag=gs_active] resistance
gamemode adventure @a[tag=gs_active]
tp @a[tag=gs_active] 8 -40 8 0 0
gamemode adventure @a[tag=gs_forced_spec]

tag @a remove gs_active
tag @a remove gs_dead_this_round
tag @a remove gs_forced_spec
tag @a remove gs_slot1
tag @a remove gs_slot2
tag @a remove gs_exit_handled

scoreboard players set @a gs_player_ctrl 0

tellraw @a {"text":"[admin] Cleared stuck game state to idle.","color":"aqua","bold":true}
