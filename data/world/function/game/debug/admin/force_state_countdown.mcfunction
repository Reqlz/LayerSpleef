execute unless entity @a[tag=gs_active] run tellraw @s {"text":"No active players to force into countdown.","color":"red"}
execute if entity @a[tag=gs_active] run scoreboard players set #state gs_state 1
execute if entity @a[tag=gs_active] run scoreboard players set #timer gs_timer 100
execute if entity @a[tag=gs_active] run scoreboard players set #pause_timer gs_cfg 0
execute if entity @a[tag=gs_active] run scoreboard players set #prompt_cd gs_cfg 0
execute if entity @a[tag=gs_active] run function world:game/lock_players
execute if entity @a[tag=gs_active] run tellraw @a[tag=gs_active] {"text":"[admin] Forced countdown state.","color":"aqua"}
