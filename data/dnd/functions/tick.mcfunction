scoreboard players add TICK logfile 1

# TODO: conditional on being on something, a team?
execute as @a run function dnd:player_tick

# not sure if it's actually faster to use this conditional but here we are
execute if entity @p[scores={read_cs=1..}] run function dnd:refresh_charactersheets


# -- Locked --
execute at @e[tag=locked] if score @s effect_id = AOE effect_id run function dnd:aoe
execute at @e[tag=locked] if score @s effect_id = PICK_BLOCK effect_id run function dnd:pick_block


execute as @e[tag=pick_block,tag=!spoken_for,tag=!locked] run data remove entity @s Glowing
tp @e[tag=pick_block,tag=!spoken_for,tag=!locked] ~ -40 ~

# last resort clean up, only let this catch things if it would be costly otherwise
kill @e[type=!player,tag=!locked,tag=!animation,tag=!spoken_for]
tag @e[tag=spoken_for] remove spoken_for

# ------- ANIMATIONS -------

execute as @e if score @s effect_id = PICK_BLOCK effect_id 

# there should be a bunch of different color options
# at the very least, copy everyone's custom discord colors
# execute at @e[tag=aoe] run particle minecraft:dust 0.19 0.39 0.58 1.0 ~ ~ ~ 0.05 0.05 0.05 0 1 normal
execute at @e[tag=blue_dust] run particle minecraft:dust 0.3 0.6 0.9 1.0 ~ ~ ~ 0.05 0.05 0.05 0 1 normal

kill @e[tag=animation,tag=!locked]

