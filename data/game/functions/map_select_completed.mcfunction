# Called once your map voting/selection finishes.
# This function assigns players to start spots and teleports them.
# Replace coordinates with your final arena spawn pads.

tag @a remove spot_1
tag @a remove spot_2
tag @a remove spot_3
tag @a remove spot_4
tag @a remove in_game

tag @a[limit=1,sort=random] add spot_1
tag @a[tag=!spot_1,limit=1,sort=random] add spot_2
tag @a[tag=!spot_1,tag=!spot_2,limit=1,sort=random] add spot_3
tag @a[tag=!spot_1,tag=!spot_2,tag=!spot_3,limit=1,sort=random] add spot_4

tag @a[tag=spot_1] add in_game
tag @a[tag=spot_2] add in_game
tag @a[tag=spot_3] add in_game
tag @a[tag=spot_4] add in_game

# TODO: edit these coordinates to your selected map's player spawn pads.
tp @a[tag=spot_1] 0 100 0 0 0
tp @a[tag=spot_2] 5 100 0 0 0
tp @a[tag=spot_3] 0 100 5 0 0
tp @a[tag=spot_4] 5 100 5 0 0

function game:start_game
