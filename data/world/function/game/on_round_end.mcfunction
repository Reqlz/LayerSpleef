scoreboard players remove @a[tag=gs_active,tag=gs_dead_this_round] gs_lives 1
execute as @a[tag=gs_active,tag=gs_dead_this_round] run scoreboard players operation @s gs_deaths_seen = @s gs_deaths

execute as @a[tag=gs_active,tag=gs_dead_this_round] run tellraw @a[tag=gs_active] ["",{"selector":"@s","color":"red","bold":true},{"text":" lost a life. Lives left: ","color":"gold"},{"score":{"name":"@s","objective":"gs_lives"},"color":"yellow","bold":true}]

execute if entity @a[tag=gs_active,scores={gs_lives=..0}] run function world:game/end_match
execute unless entity @a[tag=gs_active,scores={gs_lives=..0}] run function world:game/start_round
