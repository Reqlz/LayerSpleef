# Keep pre-round players locked in their assigned start slots.
execute if score #phase game_vars matches 1 run function game:lock_players

# Lock countdown -> switch to live round.
execute if score #phase game_vars matches 1 if score #lock_timer game_vars matches 1.. run scoreboard players remove #lock_timer game_vars 1
execute if score #phase game_vars matches 1 if score #lock_timer game_vars matches ..0 run function game:go_live

# During live round, monitor last player standing.
execute if score #phase game_vars matches 2 run function game:check_round_end

# Between rounds, wait before restarting.
execute if score #phase game_vars matches 3 if score #round_end_timer game_vars matches 1.. run scoreboard players remove #round_end_timer game_vars 1
execute if score #phase game_vars matches 3 if score #round_end_timer game_vars matches ..0 run function game:start_round
