execute as @a[scores={designator_cooldown=1..}] run scoreboard players remove @s designator_cooldown 1
execute as @a[scores={designator_cooldown=1..}] unless score @s designator_cooldown matches ..0 run schedule function abilities:laser_designator/scout_cooldown_tick 1s