# Assumed context:
# as and at the player looking
scoreboard players add LOOKING logfile 1


# This function is a general ray trace
# It "returns" a cloud tagged 'target' that has effect_id and player_id scores to match the context's
# If you are confident that your call to this is the most recent you are free to use @e[tag=target] as a global
# Within player_tick and its children it should be obvious wheter the above is true, don't rely on it otherwise
# Future calls to this function will clean up old targets, either killing them or removing the tag
# If you want it to stick around tag it 'locked' and refer to it by markers other than 'target', like effect_id etc


# along with the tag changes, guarentees the claim that @e[tag=target] is limited to just the one created later in this function
kill @e[tag=target,tag=!locked]

# we're going to want a reference tag here but it needs to not be target
tag @e[tag=target,tag=locked] add was_target
tag @e[tag=was_target] remove target

summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2000000,Tags:["target"]}

# there seems to be no single command that both rotates and adjusts to eye level, so here's two
execute at @s run tp @e[tag=target] ~ ~ ~ ~ ~
execute anchored eyes at @s run tp @e[tag=target] ^ ^ ^
# TODO: test ^^ without the 'at @s'. it's unclear if the ordering of the arguments affects 'anchored'

# this line is why we need to use the scoreboard to track effects indtead of using tags
scoreboard players operation @e[tag=target] effect_id = @s effect_id
scoreboard players operation @e[tag=target] player_id = @s player_id

# pretty simple recursive function that does the real work
execute as @e[tag=target] at @s run function dnd:move_to_collision

# kill target if it reached the distance limit without a collision
kill @e[tag=target,tag=!collision]
tag @e[tag=target] remove collision