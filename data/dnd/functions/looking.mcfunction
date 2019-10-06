# Assumed context:
# the player looking
scoreboard players add LOOKING logfile 1

summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2000000,Tags:["target","new"]}

# there seems to be no single command that will both rotate and adjust to eye level, so here's two
execute at @s run tp @e[tag=target,tag=new] ~ ~ ~ ~ ~
execute anchored eyes at @s run tp @e[tag=target,tag=new] ^ ^ ^

execute as @e[tag=target,tag=new] at @s run function dnd:move_to_collision
kill @e[tag=target,tag=locked]
tag @e[tag=target,tag=new] add locked
tag @e[tag=target,tag=new] remove new

execute at @e[tag=target,tag=locked] run function dnd:aoe