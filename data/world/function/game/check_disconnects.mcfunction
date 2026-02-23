scoreboard players set #active_count gs_tmp 0
execute as @a[tag=gs_active] run scoreboard players add #active_count gs_tmp 1

execute if score #solo_runtime gs_cfg matches 0 if score #active_count gs_tmp matches ..1 run tellraw @a {"text":"Match ended: participant left/disconnected.","color":"red"}
execute if score #solo_runtime gs_cfg matches 0 if score #active_count gs_tmp matches ..1 run function world:game/end_match

execute if score #solo_runtime gs_cfg matches 1 if score #active_count gs_tmp matches ..0 run tellraw @a {"text":"Solo test ended: no active player remains.","color":"red"}
execute if score #solo_runtime gs_cfg matches 1 if score #active_count gs_tmp matches ..0 run function world:game/end_match
