tag @s add respawned
scoreboard players set @s respawnTimer 20

execute if score #state gs_state matches 1.. run function world:game/on_player_spawned_in_match

execute if score #state gs_state matches 0 run tag @s remove team_green
execute if score #state gs_state matches 0 run tag @s remove team_red
execute if score #state gs_state matches 0 run tag @s remove pk_started

execute if score #state gs_state matches 0 as @s[gamemode=survival] run gamemode adventure

execute if score #state gs_state matches 0 run title @s title {"text":"Lobby","bold":true}
execute if score #state gs_state matches 0 run playsound block.amethyst_block.break master @s ~ ~ ~ 10 1
