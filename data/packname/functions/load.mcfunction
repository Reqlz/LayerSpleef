tellraw @a {"text": "Loading...", "color": "#FFFF60"}
scoreboard objectives add pot_placed minecraft.used:flower_pot
scoreboard objectives add pot_direction dummy
scoreboard objectives add ray_steps dummy
scoreboard objectives add ray_success dummy
tellraw @a {"text": "Loaded Scoreboards", "color": "#00FF60"}
# scoreboard objectives setdisplay sidebar pot_placed
# tellraw @a {"text": "Scoreboard Displayed", "color": "#00FF60"}