execute unless block ~ ~ ~ minecraft:air run function packname:break_pot
scoreboard players remove @s ray_steps 1
execute if score @s ray_steps matches 1.. if score @s ray_success matches 0 positioned ^ ^ ^0.1 run function packname:ray