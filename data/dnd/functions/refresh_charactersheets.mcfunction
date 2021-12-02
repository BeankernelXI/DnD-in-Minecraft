# Assumed context:
# as each player
scoreboard players add REFRESH_CS logfile 1


execute if entity @s[nbt={SelectedItem:{tag:{title:["Character Sheet"]}}}] run function dnd:give_charactersheet

