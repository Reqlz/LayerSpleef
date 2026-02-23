scoreboard players set #solo_runtime gs_cfg 1

execute as @a[tag=gs_slot1,tag=team_red,tag=team_green] run tag @s remove team_green
execute as @a[tag=gs_slot1,tag=!team_red,tag=!team_green] run tag @s add team_red
execute as @a[tag=gs_slot1,tag=team_red] run title @s actionbar {"text":"Solo mode on Red side","color":"gold","bold":true}
execute as @a[tag=gs_slot1,tag=team_green] run title @s actionbar {"text":"Solo mode on Green side","color":"gold","bold":true}

tag @a[tag=gs_slot1] add gs_active
tag @a remove gs_slot1
tag @a remove gs_slot2

tellraw @a[tag=gs_active] {"text":"Solo test mode started","color":"aqua","bold":true}
function world:game/start_match_success
