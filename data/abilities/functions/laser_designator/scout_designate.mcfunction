execute as @s run tag @s add designator_cooldown
execute as @s run function abilities:laser_designator/scout_start_cooldown
execute as @s at @s run function abilities:start_scout_raycast