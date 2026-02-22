execute as @a[scores={respawnTimer=..0}] run function world:spawn/reset_spawned_tag
execute as @a[tag=pk_started] run function world:parkour/blockcheck

# Abilities--{
function abilities:instant_wall/tick
# }-- Abilities