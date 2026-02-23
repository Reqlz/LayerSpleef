tag @a[tag=gs_slot2] remove team_red
tag @a[tag=gs_slot2] add team_green
tellraw @a[tag=gs_slot2] {"text":"Team auto-fix: moved you to Green.","color":"yellow","bold":true}
tellraw @a[tag=gs_slot1] {"text":"Team auto-fix applied: opponent moved to Green.","color":"gold"}
tellraw @a[tag=gs_slot2] {"text":"Team auto-fix applied for 1v1 balance.","color":"gold"}
