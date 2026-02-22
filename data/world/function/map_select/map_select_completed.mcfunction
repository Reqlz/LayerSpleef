effect clear @s resistance
gamemode survival

# Map 1
execute if entity @e[tag=map_selection,scores={selected_map=1}] run tp @s[tag=team_red] 8 -40 8
execute if entity @e[tag=map_selection,scores={selected_map=1}] run tp @s[tag=team_green] 8 -40 8

# Map 2
execute if entity @e[tag=map_selection,scores={selected_map=2}] run tp @s[tag=team_red] -461 5 -435
execute if entity @e[tag=map_selection,scores={selected_map=2}] run tp @s[tag=team_green] -435 5 -461

# Map 3
execute if entity @e[tag=map_selection,scores={selected_map=3}] run tp @s[tag=team_red] 8 -40 8
execute if entity @e[tag=map_selection,scores={selected_map=3}] run tp @s[tag=team_green] 8 -40 8