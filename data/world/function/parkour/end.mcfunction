title @s actionbar {"text":"Parkour Completed!","bold":true}
playsound minecraft:entity.player.levelup ambient @s
execute as @s if entity @s[tag=pk_started] run tag @s remove pk_started