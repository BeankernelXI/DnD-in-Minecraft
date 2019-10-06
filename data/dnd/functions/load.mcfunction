scoreboard objectives add logfile dummy "Executions"
scoreboard players reset * logfile
scoreboard players add LOAD logfile 1

function dnd:initialize_scoreboard

# this is mostly for testing since in the wild players will be joining after 'load' has run
execute as @a run function dnd:setup_player


