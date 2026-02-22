scoreboard players add #round game_vars 1
scoreboard players set #phase game_vars 1
scoreboard players set #lock_timer game_vars 60

# Re-lock everyone to their start pads before the round goes live.
tag @a[tag=in_game] add pre_round_lock

# TODO: If you move players between rounds, call your teleport logic here.
# For now it teleports to the same map_select_completed slot locations.
tp @a[tag=spot_1,tag=in_game] 0 100 0 0 0
tp @a[tag=spot_2,tag=in_game] 5 100 0 0 0
tp @a[tag=spot_3,tag=in_game] 0 100 5 0 0
tp @a[tag=spot_4,tag=in_game] 5 100 5 0 0

tellraw @a[tag=in_game] ["",{"text":"Round ","color":"gold","bold":true},{"score":{"name":"#round","objective":"game_vars"},"color":"yellow","bold":true},{"text":" starting...","color":"gold"}]
