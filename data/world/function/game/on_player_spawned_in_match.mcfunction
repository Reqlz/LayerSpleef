execute if score #state gs_state matches 2 as @s[tag=gs_active] run gamemode spectator
execute if score #state gs_state matches 2 as @s[tag=gs_active] run title @s actionbar {"text":"Life lost - waiting for next round","color":"red","bold":true}

execute if score #state gs_state matches 1 as @s[tag=gs_active] run gamemode survival
execute if score #state gs_state matches 1 as @s[tag=gs_active] run function world:game/teleport_spawns
execute if score #state gs_state matches 1 as @s[tag=gs_active] run title @s actionbar {"text":"Round restart - get ready","color":"gold","bold":true}

execute if score #state gs_state matches 3 as @s[tag=gs_active] run gamemode adventure
execute if score #state gs_state matches 3 as @s[tag=gs_active] run function world:game/paused_alone_prompt

execute as @s[tag=!gs_active] run gamemode spectator
execute as @s[tag=!gs_active] run tag @s add gs_forced_spec
execute as @s[tag=!gs_active] run title @s actionbar {"text":"Spectating current match","color":"gray"}
