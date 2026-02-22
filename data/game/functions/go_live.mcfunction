scoreboard players set #phase game_vars 2
tag @a remove pre_round_lock

tellraw @a[tag=in_game] {"text":"GO!","color":"green","bold":true}
