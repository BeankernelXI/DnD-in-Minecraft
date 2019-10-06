# Assumed context:
# as any player
scoreboard players add SETUP_PLAYER logfile 1

# For each player on a team, setup their scoreboards and inventories


# TODO: instead of relying on setting tags myself, initiate a dialogue with any fresh faces
#   'tellraw' will make the experience mush smoother (don't forget to bother them if they don't answer)

execute as @s[tag=!setup_complete] run function dnd:give_charactersheet


# temp for ease of testing
function dnd:roll_stats
function dnd:recalc_stat_mods



tag @s add setup_complete
