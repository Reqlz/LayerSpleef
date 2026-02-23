tag @s remove gs_exit_handled
execute if entity @s[tag=gs_active] run function world:game/self_exit_active
execute unless entity @s[tag=gs_exit_handled] run function world:game/self_exit_non_active
tag @s remove gs_exit_handled
