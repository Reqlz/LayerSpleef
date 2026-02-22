tellraw @a[tag=debug] {"text":"[game] Loading round system...","color":"aqua"}

# Core state values (fake players in objective game_vars)
scoreboard objectives add game_vars dummy
scoreboard objectives add round_wins dummy

# 0 = idle, 1 = pre-round lock, 2 = live round, 3 = round end delay
scoreboard players set #phase game_vars 0
scoreboard players set #round game_vars 0
scoreboard players set #alive game_vars 0
scoreboard players set #lock_timer game_vars 0
scoreboard players set #round_end_timer game_vars 0
scoreboard players set #win_target game_vars 3

tellraw @a[tag=debug] {"text":"[game] Round system loaded","color":"green"}
