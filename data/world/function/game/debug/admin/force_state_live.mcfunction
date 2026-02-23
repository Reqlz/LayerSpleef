execute unless entity @a[tag=gs_active] run tellraw @s {"text":"No active players to force into live state.","color":"red"}
execute if entity @a[tag=gs_active] run function world:game/go_live
execute if entity @a[tag=gs_active] run tellraw @a[tag=gs_active] {"text":"[admin] Forced live state.","color":"aqua"}
