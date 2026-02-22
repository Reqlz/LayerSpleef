# Ends current match and clears gameplay tags/state.
scoreboard players set #phase game_vars 0
scoreboard players set #lock_timer game_vars 0
scoreboard players set #round_end_timer game_vars 0

tag @a remove pre_round_lock
tag @a remove in_game

tellraw @a {"text":"Match complete!","color":"light_purple","bold":true}
