# runs on world start/reload
scoreboard objectives add logfile dummy "Executions"
# scoreboard objectives setdisplay sidebar logfile
scoreboard players reset * logfile
scoreboard players add LOAD logfile 1


# Gamerules
gamerule doLimitedCrafting true
gamerule announceAdvancements false
gamerule doEntityDrops false
gamerule doTileDrops false
gamerule doMobLoot false
gamerule doMobSpawning false
# gamerule doInsomnia false
# gamerule doImmediateRespawn false
gamerule doWeatherCycle false
gamerule doFireTick false
gamerule maxEntityCramming 0
gamerule naturalRegeneration false




function dnd:initialize_scoreboard

# this is mostly for testing since in the wild players will be joining after 'load' has run
execute as @a run function dnd:setup_player


