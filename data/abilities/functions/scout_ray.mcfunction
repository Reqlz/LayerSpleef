scoreboard players reset @s[scores={}]
particle soul_fire_flame ~ ~ ~ 0 0 0 0 1 force
scoreboard players add @s scout_ray_steps 1
execute unless block ~ ~ ~ minecraft:air run function abilities:windup
execute unless score @s scout_ray_steps matches 50 if block ^ ^ ^ air positioned ^ ^ ^1 run function abilities:scout_ray
scoreboard players reset @s scout_ray_steps