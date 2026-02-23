tag @a[tag=gs_slot2] remove team_green
tag @a[tag=gs_slot2] add team_red
tellraw @a[tag=gs_slot2] {"text":"Team auto-fix: moved you to Red.","color":"yellow","bold":true}
tellraw @a[tag=gs_slot1] {"text":"Team auto-fix applied: opponent moved to Red.","color":"gold"}
tellraw @a[tag=gs_slot2] {"text":"Team auto-fix applied for 1v1 balance.","color":"gold"}
