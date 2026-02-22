scoreboard objectives add gs_state dummy
scoreboard objectives add gs_timer dummy
scoreboard objectives add gs_round dummy
scoreboard objectives add gs_lives dummy
scoreboard objectives add gs_deaths deathCount
scoreboard objectives add gs_deaths_seen dummy
scoreboard objectives add gs_tmp dummy

scoreboard players set #state gs_state 0
scoreboard players set #timer gs_timer 0
scoreboard players set #round gs_round 0
scoreboard players set #active_count gs_tmp 0
scoreboard players set #alive_count gs_tmp 0
scoreboard players set #positive_lives gs_tmp 0

tag @a remove gs_active
tag @a remove gs_dead_this_round
tag @a remove gs_forced_spec
