scoreboard players set @a[tag=gs_active] gs_lives 3
execute as @a[tag=gs_active] run scoreboard players operation @s gs_deaths_seen = @s gs_deaths

scoreboard players set #round gs_round 0

execute if score #solo_runtime gs_cfg matches 1 run tellraw @a[tag=gs_active] {"text":"Solo test rules active","color":"aqua"}
execute if score #solo_runtime gs_cfg matches 0 run tellraw @a[tag=gs_active] {"text":"1v1 match started","color":"green","bold":true}

execute as @a[tag=!gs_active,tag=!gs_forced_spec] run gamemode spectator
tag @a[tag=!gs_active,tag=!gs_forced_spec] add gs_forced_spec

function world:game/start_round
