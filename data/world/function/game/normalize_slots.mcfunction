# Normalize slot1
execute as @a[tag=gs_slot1,tag=team_red,tag=team_green] run tag @s remove team_green
execute as @a[tag=gs_slot1,tag=!team_red,tag=!team_green] run tag @s add team_red
execute as @a[tag=gs_slot1,tag=!team_red,tag=!team_green] run tellraw @s {"text":"No team found. You were assigned Red.","color":"yellow","bold":true}

# Normalize slot2 baseline
execute as @a[tag=gs_slot2,tag=team_red,tag=team_green] run tag @s remove team_green

# If slot2 has no team, assign opposite of slot1
execute if entity @a[tag=gs_slot1,tag=team_red] as @a[tag=gs_slot2,tag=!team_red,tag=!team_green] run tag @s add team_green
execute if entity @a[tag=gs_slot1,tag=team_green] as @a[tag=gs_slot2,tag=!team_red,tag=!team_green] run tag @s add team_red

# Correct same-team conflicts
execute if entity @a[tag=gs_slot1,tag=team_red] if entity @a[tag=gs_slot2,tag=team_red] run function world:game/normalize_slots_both_red
execute if entity @a[tag=gs_slot1,tag=team_green] if entity @a[tag=gs_slot2,tag=team_green] run function world:game/normalize_slots_both_green
