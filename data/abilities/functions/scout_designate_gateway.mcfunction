scoreboard players set @a designator_used 0
execute as @s unless data entity @s {Tags:["designator_cooldown"]} run function abilities:scout_designate