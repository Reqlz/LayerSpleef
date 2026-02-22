scoreboard players set #state gs_state 0
scoreboard players set #timer gs_timer 0

scoreboard players set #alive_count gs_tmp 0
scoreboard players set #positive_lives gs_tmp 0
execute as @a[tag=gs_active] run scoreboard players add #alive_count gs_tmp 1
execute as @a[tag=gs_active,scores={gs_lives=1..}] run scoreboard players add #positive_lives gs_tmp 1

execute if score #alive_count gs_tmp matches 0 run tellraw @a {"text":"Match ended.","color":"gold","bold":true}
execute if score #alive_count gs_tmp matches 1 run tellraw @a ["",{"selector":"@a[tag=gs_active,limit=1]","color":"green","bold":true},{"text":" wins the match!","color":"gold","bold":true}]
execute if score #alive_count gs_tmp matches 2 if score #positive_lives gs_tmp matches 1 run tellraw @a ["",{"selector":"@a[tag=gs_active,scores={gs_lives=1..},limit=1]","color":"green","bold":true},{"text":" wins the match!","color":"gold","bold":true}]
execute if score #alive_count gs_tmp matches 2 if score #positive_lives gs_tmp matches 0 run tellraw @a {"text":"Match ended in a draw!","color":"yellow","bold":true}

effect clear @a[tag=gs_active] resistance
gamemode adventure @a[tag=gs_active]
tp @a[tag=gs_active] 8 -40 8 0 0

gamemode adventure @a[tag=gs_forced_spec]

tag @a remove gs_active
tag @a remove gs_dead_this_round
tag @a remove gs_forced_spec
