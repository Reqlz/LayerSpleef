execute unless score #state gs_state matches 3 run title @s actionbar {"text":"Continue solo is only available while paused.","color":"red"}
execute if score #state gs_state matches 3 unless entity @s[tag=gs_active] run title @s actionbar {"text":"Only the remaining active player can continue solo.","color":"red"}

execute if score #state gs_state matches 3 if entity @s[tag=gs_active] run scoreboard players set #solo_runtime gs_cfg 1
execute if score #state gs_state matches 3 if entity @s[tag=gs_active] run scoreboard players set #pause_timer gs_cfg 0
execute if score #state gs_state matches 3 if entity @s[tag=gs_active] run scoreboard players set #prompt_cd gs_cfg 0
execute if score #state gs_state matches 3 if entity @s[tag=gs_active] run tellraw @a[tag=gs_active] {"text":"Continuing in solo test mode.","color":"aqua","bold":true}
execute if score #state gs_state matches 3 if entity @s[tag=gs_active] run function world:game/start_round
