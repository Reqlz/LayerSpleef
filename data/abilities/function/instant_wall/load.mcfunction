# ===============================
# Instant Wall – Clean Reload Init
# ===============================

# ---- Create objectives (safe) ----
scoreboard objectives add pot_direction dummy
scoreboard objectives add ray_steps dummy
scoreboard objectives add ray_success dummy
scoreboard objectives add pot_placed dummy

# ---- Reset all player scores ----
scoreboard players set @a pot_direction 0
scoreboard players set @a ray_steps 0
scoreboard players set @a ray_success 0
scoreboard players set @a pot_placed 0

# ---- Optional: reset any tags if you use them ----
tag @a remove pk_started
tag @a remove respawned

# ---- Optional: clean up stray temp entities (if your ray ever uses markers) ----
kill @e[tag=lumberjack_temp]

# ---- Debug confirmation (remove later if you want) ----
tellraw @a {"text":"[Instant Wall] Reloaded","color":"green"}