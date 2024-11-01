execute as @s[y_rotation=-45..45] run scoreboard players set @s pot_direction 0 
execute as @s[y_rotation=45..90] run scoreboard players set @s pot_direction 1
execute as @s[y_rotation=-112.5..-67.5] run scoreboard players set @s pot_direction 2
execute as @s[y_rotation=-67.5..-22.5] run scoreboard players set @s pot_direction 3
scoreboard players set @s pot_placed 0