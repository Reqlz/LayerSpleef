execute as @a[scores={designator_cooldown=1..}] run scoreboard players remove @s designator_cooldown 1
execute if entity @a[scores={designator_cooldown=1..}] run schedule function abilities:laser_designator/scout_cooldown_tick 1s replace
