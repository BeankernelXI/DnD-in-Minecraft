# Assumed context:
# no context
scoreboard players add REFRESH_CS logfile 1


clear @a[scores={read_cs=1..}] minecraft:written_book
execute as @a[scores={read_cs=1..}] run function dnd:give_charactersheet
scoreboard players set @a[scores={read_cs=1..}] read_cs 0
