say airstrike
# execute as @s if score @s 
execute as @s at @e[type=armor_stand,limit=1,tag=airstrike] run summon tnt ~ ~20 ~ {Fuse:40, NoGravity:false,Motion:[0,-1,0]} 
kill @e[type=armor_stand,tag=airstrike]