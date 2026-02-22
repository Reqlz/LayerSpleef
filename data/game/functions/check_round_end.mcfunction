# Count currently alive players in match.
scoreboard players set #alive game_vars 0
execute as @a[tag=in_game,gamemode=!spectator] run scoreboard players add #alive game_vars 1

# If one (or zero) players remain, end the round.
execute if score #alive game_vars matches ..1 run function game:on_round_end
