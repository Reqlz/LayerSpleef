scoreboard players add #round gs_round 1
scoreboard players set #state gs_state 1
scoreboard players set #timer gs_timer 100

gamemode survival @a[tag=gs_active]
function world:game/teleport_spawns
title @a[tag=gs_active] actionbar {"text":"Round starting in 5...","color":"gold","bold":true}
