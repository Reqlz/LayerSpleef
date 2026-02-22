# Hard-lock players to start spots while pre_round_lock is active.
execute as @a[tag=spot_1,tag=pre_round_lock,tag=in_game] at @s run tp @s 0 100 0 0 0
execute as @a[tag=spot_2,tag=pre_round_lock,tag=in_game] at @s run tp @s 5 100 0 0 0
execute as @a[tag=spot_3,tag=pre_round_lock,tag=in_game] at @s run tp @s 0 100 5 0 0
execute as @a[tag=spot_4,tag=pre_round_lock,tag=in_game] at @s run tp @s 5 100 5 0 0
