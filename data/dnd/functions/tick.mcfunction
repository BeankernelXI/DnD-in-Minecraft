# runs every tick
scoreboard players add TICK logfile 1

# TODO: conditional on something, a team?
execute as @a run function dnd:player_tick

# not sure if it's actually faster to use this conditional but here we are
execute if entity @p[scores={read_cs=1..}] run function dnd:refresh_charactersheets

# TODO: top-off low Duration area_effect_clouds
# data modify entity @e[type=area_effect_cloud,tag=!duration_matters,nbt={Duration:1..10}] Duration value 2000000

# -- Locked --
# execute at @e[tag=locked] if score @s effect_id = AOE effect_id run function dnd:aoe
# execute at @e[tag=locked] if score @s effect_id = PICK_BLOCK effect_id run function dnd:pick_block

# tp instead of kill to avoid the particles from dying
# and turn off the glowing first since you can see it zoom away otherwise *facepalm* tp is weird
execute as @e[type=shulker,tag=!spoken_for,tag=!locked] run data remove entity @s Glowing
tp @e[type=shulker,tag=!spoken_for,tag=!locked] ~ -40 ~
kill @e[type=shulker,tag=!spoken_for,tag=!locked]
# it doesn't die to the void due to invulerability??

# last resort clean up, only let this catch things if it would be costly otherwise
kill @e[type=area_effect_cloud,tag=!locked,tag=!animation,tag=!spoken_for]
# use spoken_for only to save repeating the same work every tick
tag @e[tag=spoken_for] remove spoken_for

# ------- ANIMATIONS -------


# there should be a bunch of different color options
# at the very least, copy everyone's custom discord colors
# execute at @e[tag=bean_dust] run particle minecraft:dust 0.19 0.39 0.58 1.0 ~ ~ ~ 0.05 0.05 0.05 0 1 normal
execute as @e[tag=blue_dust] at @s run particle dust 0.3 0.6 0.9 1.0 ~ ~ ~ 0.05 0.05 0.05 0 1 normal

kill @e[tag=animation,tag=!locked]

