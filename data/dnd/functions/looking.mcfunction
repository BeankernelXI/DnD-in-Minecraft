# Assumed context:
# as and at the player looking
scoreboard players add LOOKING logfile 1

# trying to decide if this should be here for safety or up a level for clarity
kill @e[tag=target,tag=!locked]

summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2000000,Tags:["target"]}

# there seems to be no single command that both rotates and adjusts to eye level, so here's two
execute at @s run tp @e[tag=target] ~ ~ ~ ~ ~
execute anchored eyes at @s run tp @e[tag=target] ^ ^ ^
# TODO: test ^^ without the 'at @s'. it's unclear if the ordering of the arguments affects 'anchored'

# this line is why we shouldn't use tags 
scoreboard players operation @e[tag=target,tag=!locked] effect_id = @s effect_id

execute as @e[tag=target] at @s run function dnd:move_to_collision



