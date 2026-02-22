scoreboard players set #state gs_state 2
execute as @a[tag=gs_active] run scoreboard players operation @s gs_deaths_seen = @s gs_deaths
effect clear @a[tag=gs_active] resistance
title @a[tag=gs_active] actionbar {"text":"GO!","color":"green","bold":true}
