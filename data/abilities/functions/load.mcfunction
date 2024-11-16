execute as @a[name=Reqlo, tag=!debug] run tag @s add debug
tellraw @a[tag=debug] {"text": "Loading...", "color": "#FFFF60"}
scoreboard objectives add pot_placed minecraft.used:flower_pot
scoreboard objectives add pot_direction dummy
scoreboard objectives add ray_steps dummy
scoreboard objectives add ray_success dummy
scoreboard objectives add scout_ray_steps dummy
scoreboard objectives add scout_ray_success dummy
scoreboard objectives add designator_used minecraft.used:warped_fungus_on_a_stick
scoreboard objectives add designated dummy
scoreboard objectives add designator_cooldown dummy
scoreboard objectives add warning_bell_iterations dummy
tellraw @a[tag=debug] {"text": "Loaded Scoreboards", "color": "#00FF60"}
scoreboard players set @a pot_placed 0
scoreboard players set @a pot_direction 0
scoreboard players set @a designator_used 0
scoreboard players set @a designated 0
scoreboard players set @a designator_cooldown 0
tellraw @a[tag=debug] {"text": "Set Defaults", "color": "#ff8000"}
# scoreboard objectives setdisplay sidebar designator_used
# tellraw @a {"text": "Scoreboard Displayed", "color": "#00FF60"}