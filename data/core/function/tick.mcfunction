
# Powers --{
#   
#   execute as @a anchored eyes if score @s designator_used matches 1.. run function abilities:laser_designator/scout_designate_gateway
# }--

# Variable Updating --{
#   execute as @a run function abilities:laser_designator/scout_cooldown
execute as @a[scores={respawnTimer=1..}] run scoreboard players remove @s respawnTimer 1
# }--

# CallStack --{
function core:callstack
# }--