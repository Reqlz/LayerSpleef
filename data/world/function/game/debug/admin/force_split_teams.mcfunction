tag @a remove gs_slot1
tag @a remove gs_slot2
tag @a[tag=gs_active,limit=1,sort=arbitrary] add gs_slot1
tag @a[tag=gs_active,tag=!gs_slot1,limit=1,sort=arbitrary] add gs_slot2
execute if entity @a[tag=gs_slot1] if entity @a[tag=gs_slot2] run function world:game/normalize_slots
tag @a remove gs_slot1
tag @a remove gs_slot2
tellraw @s {"text":"[admin] Forced team-split normalization attempt complete.","color":"aqua"}
