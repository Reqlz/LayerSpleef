scoreboard players set @a[tag=gs_active] gs_lives 3
execute as @a[tag=gs_active] run scoreboard players operation @s gs_deaths_seen = @s gs_deaths

scoreboard players set #round gs_round 0

execute as @a[tag=!gs_active,tag=!gs_forced_spec] run gamemode spectator
tag @a[tag=!gs_active,tag=!gs_forced_spec] add gs_forced_spec

function world:game/start_round
