# ===============================
# Core Tick Dispatcher
# ===============================

# --- Instant Wall Ability ---
execute as @a if score @s pot_placed matches 1.. run function abilities:instant_wall/wall_click_check

# --- Lumberjack Ray (runs while ray active) ---
execute as @a[scores={ray_steps=1..,ray_success=0}] at @s anchored eyes run function abilities:instant_wall/wall_ray

# --- Ray Countdown ---
execute as @a[scores={ray_steps=1..}] run scoreboard players remove @s ray_steps 1

# --- Optional: Auto-clear completed rays ---
execute as @a[scores={ray_steps=0}] run scoreboard players reset @s ray_steps
execute as @a[scores={ray_steps=0}] run scoreboard players reset @s ray_success