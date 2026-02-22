tag @s add respawned
scoreboard players set @s respawnTimer 20

tag @s remove team_green
tag @s remove team_red
tag @s remove pk_started

execute as @s[gamemode=survival] run gamemode adventure

title @s title {"text":"Lobby","bold":true}
execute as @s run playsound block.amethyst_block.break master @s ~ ~ ~ 10 1