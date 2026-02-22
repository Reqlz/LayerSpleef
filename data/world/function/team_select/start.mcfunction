
execute as @s[tag=team_red] run tp @s -400 2 400
execute as @s[tag=team_green] run tp @s -400 2 400
execute as @s[tag=!team_red,tag=!team_green] run title @s actionbar {"text":"You are not on a team! Please select a team to start.","color":"red","bold":true}