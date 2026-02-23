scoreboard players set #solo_runtime gs_cfg 0
function world:game/normalize_slots

tag @a[tag=gs_slot1] add gs_active
tag @a[tag=gs_slot2] add gs_active
tag @a remove gs_slot1
tag @a remove gs_slot2

function world:game/start_match_success
