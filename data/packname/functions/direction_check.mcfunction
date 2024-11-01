tellraw @s {"text": "direction_check", "color": "#e861da"}
execute if entity @s[scores={pot_direction=1}] run function packname:w_n
execute if entity @s[scores={pot_direction=2}] run function packname:w_e
execute if entity @s[scores={pot_direction=3}] run function packname:w_s
execute if entity @s[scores={pot_direction=4}] run function packname:w_w
execute if entity @s[scores={pot_direction=0}] run say @s no direction