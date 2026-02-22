scoreboard objectives add arenaCountdownDisplay dummy
scoreboard objectives add arenaCountdownDisplayMax dummy
scoreboard objectives add arenaCountdownTick dummy
scoreboard objectives add arenaCountdownTicksPer dummy

scoreboard players set @e[tag=arena,limit=1] arenaCountdownTick 20
scoreboard players set @e[tag=arena,limit=1] arenaCountdownTicksPer 20
scoreboard players set @e[tag=arena,limit=1] arenaCountdownDisplay 5
scoreboard players set @e[tag=arena,limit=1] arenaCountdownDisplayMax 5