tellraw @a {"text": "Loading...", "color": "#FFFF60"}
scoreboard objectives add pot_placed minecraft.used:flower_pot
scoreboard objectives add pot_direction dummy
tellraw @a {"text": "Loaded Scoreboards", "color": "#00FF60"}
scoreboard objectives setdisplay sidebar pot_placed
scoreboard objectives setdisplay sidebar pot_direction
tellraw @a {"text": "Scoreboards Displayed", "color": "#00FF60"}