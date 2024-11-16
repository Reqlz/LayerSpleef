execute as @s[y_rotation=135..-135, scores={pot_placed = ..1}] run scoreboard players set @s pot_direction 1 
execute as @s[y_rotation=-135..-45, scores={pot_placed = ..1}] run scoreboard players set @s pot_direction 2
execute as @s[y_rotation=-45..45, scores={pot_placed = ..1}] run scoreboard players set @s pot_direction 3
execute as @s[y_rotation=45..135, scores={pot_placed = ..1}] run scoreboard players set @s pot_direction 4
execute as @s at @s anchored eyes run function abilities:instant_wall/start_lumberjack_ray
scoreboard players set @s pot_placed 0
execute as @s[scores={pot_placed = ..1}] run function abilities:instant_wall/direction_check