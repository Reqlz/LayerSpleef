# Prevent duplicate triggers while waiting between rounds.
scoreboard players set #phase game_vars 3
scoreboard players set #round_end_timer game_vars 80

# Award win to remaining alive player(s).
execute as @a[tag=in_game,gamemode=!spectator] run scoreboard players add @s round_wins 1

# Framework hook: first-to-X winner check.
execute as @a[tag=in_game] if score @s round_wins >= #win_target game_vars run function game:end_match

tellraw @a[tag=in_game] {"text":"Round over","color":"aqua"}
