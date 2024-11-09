particle flame ~ ~ ~ 0 0 0 0 1 force
scoreboard players add @s scout_ray_steps 1
execute unless block ~ ~ ~ minecraft:air run function abilities:scout_windup
execute unless score @s scout_ray_steps matches 250 if block ^ ^ ^ air positioned ^ ^ ^0.2 run function abilities:scout_ray
scoreboard players reset @s scout_ray_steps