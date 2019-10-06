# Assumed context:
# as and at area effect cloud
scoreboard players add MOVE2COLLISION logfile 1

# TODO: a rough 1 block version and a soft 0.1 block version
#   this would have a chance to clip thru corners, is it worth checking adjacent blocks?
#   if yes, run the soft version as long as there is a non-air block within 0..1 ?
#   returning if it near-misses of course

# relies on the fact that the context doesn't move with the cloud
# "distance" is measured from where the cloud was before the first call to this function
execute as @s[distance=0..50,tag=!collision] at @s run tp ^ ^ ^0.2
execute as @s[distance=0..50,tag=!collision] at @s unless block ~ ~ ~ minecraft:air run tag @s add collision
execute as @s[distance=0..50,tag=collision] at @s unless block ~ ~ ~ minecraft:air run tp ^ ^ ^-0.2
execute as @s[distance=0..50,tag=!collision] run function dnd:move_to_collision
# ^^ this last line MUST NOT use "at" ^^