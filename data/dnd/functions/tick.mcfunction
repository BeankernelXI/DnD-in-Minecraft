scoreboard players add TICK logfile 1

# not sure if it's actually faster to use this conditional but here we are
execute if entity @p[scores={read_cs=1..}] run function dnd:refresh_charactersheets

execute at @e[tag=aoe] run particle minecraft:dust 0.3 0.6 0.9 1.0 ~ ~ ~ 0.05 0.05 0.05 0 1 normal

# VERY WIP   would break with multiple players, so limit=1 for the time being
execute as @a[limit=1,nbt={SelectedItem:{tag:{title:"Character Sheet"}}}] run function dnd:looking



