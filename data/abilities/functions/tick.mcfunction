
# Powers --{
execute as @a if score @s pot_placed matches 1.. run function abilities:instant_wall/wall_click_check
execute as @a anchored eyes if score @s designator_used matches 1.. run function abilities:laser_designator/scout_designate_gateway
# }--

# Variable Updating --{
execute as @a run function abilities:laser_designator/scout_cooldown
# }--