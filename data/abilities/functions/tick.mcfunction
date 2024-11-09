
# Powers --{
execute as @a if score @s pot_placed matches 1.. run function abilities:wall_click_check
execute as @a anchored eyes if score @s designator_used matches 1.. run function abilities:scout_designate_gateway
# }--

# Variable Updating --{
execute as @a run function abilities:scout_cooldown
# }--