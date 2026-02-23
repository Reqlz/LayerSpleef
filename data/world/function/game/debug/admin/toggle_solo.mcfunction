scoreboard players operation #tmp_toggle gs_tmp = #solo_enabled gs_cfg
execute if score #tmp_toggle gs_tmp matches 0 run scoreboard players set #solo_enabled gs_cfg 1
execute if score #tmp_toggle gs_tmp matches 1.. run scoreboard players set #solo_enabled gs_cfg 0
execute if score #tmp_toggle gs_tmp matches 0 run tellraw @s {"text":"[admin] solo mode enabled.","color":"aqua"}
execute if score #tmp_toggle gs_tmp matches 1.. run tellraw @s {"text":"[admin] solo mode disabled.","color":"aqua"}
