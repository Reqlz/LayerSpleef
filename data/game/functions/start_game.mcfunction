# Entry point for a full match after map selection.
scoreboard players set #round game_vars 0
scoreboard players set #phase game_vars 0
scoreboard players set #round_end_timer game_vars 0

# Reset per-player match values.
scoreboard players set @a[tag=in_game] round_wins 0

function game:start_round
