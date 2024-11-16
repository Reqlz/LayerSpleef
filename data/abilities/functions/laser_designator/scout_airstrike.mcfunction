execute as @e[type=armor_stand,limit=1,tag=airstrike] at @s run summon tnt ~ ~ ~ {Glowing:1b,Silent:1b,Motion:[0d,-20d, 0d],Fuse:30} 
execute as @e[type=armor_stand,tag=airstrike] run kill @s