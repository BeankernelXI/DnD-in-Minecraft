# Assumed context:
# as any player
scoreboard players add SETUP_PLAYER logfile 1

# they'll get excited for a second and then never be able to craft again
recipe give @s *
recipe take @s *

# Unfortunately we are going to need player ids :(
# strange note: merely asking the question "* player_id" will cause everyone without a player_id to be given an id of 0
execute as @s unless score @s player_id matches 1.. run tag @s add needs_id
scoreboard players operation @s[tag=needs_id] player_id > * player_id
scoreboard players operation @s[tag=needs_id] player_id += ONE const
tag @s[tag=needs_id] remove needs_id



# TODO: instead of relying on setting tags myself, initiate a dialogue with any fresh faces
#   'tellraw' will make the experience mush smoother (don't forget to bother them if they don't answer)

execute as @s[tag=!setup_complete] run function dnd:give_charactersheet


# temp for ease of testing
function dnd:roll_stats
function dnd:recalc_stat_mods



# tag @s add setup_complete
