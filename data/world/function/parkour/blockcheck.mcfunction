execute as @s[tag=pk_started] at @s if block ~ ~-1 ~ minecraft:black_concrete run function world:parkour/reset
execute as @s[tag=pk_started] at @s if block ~ ~-1 ~ minecraft:quartz_block run function world:parkour/exit
execute as @s[tag=pk_started] at @s if block ~ ~-1 ~ minecraft:black_stained_glass run function world:parkour/exit