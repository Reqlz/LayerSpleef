scoreboard players enable @a gs_player_ctrl

execute as @a[scores={gs_player_ctrl=1}] run function world:game/self_exit
execute as @a[scores={gs_player_ctrl=2}] run function world:game/continue_solo

scoreboard players set @a[scores={gs_player_ctrl=1..}] gs_player_ctrl 0
