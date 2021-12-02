# Assumed context:
# as each player
scoreboard players add PLAYER_TICK logfile 1
# This is the place to be as messy as we need to be but by the time this function returns it better be clean again
# If J Blow has taught me anything it's to not extend logic across frame boundries

execute if score @s read_cs matches 1.. run function dnd:refresh_charactersheets




scoreboard players operation @s[nbt={SelectedItem:{tag:{Tags:["aoe"]}}}] effect_id = AOE effect_id 
execute if score @s effect_id = AOE effect_id run function dnd:looking
execute at @e[tag=target] if score @s effect_id = AOE effect_id run function dnd:aoe


scoreboard players operation @s[nbt={SelectedItem:{tag:{Tags:["pick_block"]}}}] effect_id = PICK_BLOCK effect_id 
execute if score @s effect_id = PICK_BLOCK effect_id run function dnd:looking
execute at @e[tag=target] if score @s effect_id = PICK_BLOCK effect_id run function dnd:pick_block



# for now, they will go away when you read a book
tag @s add it_me
execute if score @s read_cs matches 1.. as @e[tag=locked] if score @s effect_id = AOE effect_id if score @s player_id = @a[tag=it_me,limit=1] player_id run tag @s remove locked
execute if score @s read_cs matches 1.. as @e[tag=locked] if score @s effect_id = PICK_BLOCK effect_id if score @s player_id = @a[tag=it_me,limit=1] player_id run tag @s remove locked
tag @s remove it_me

# ---- Reset Tracking Scores ----
scoreboard players set @s effect_id 0
scoreboard players set @s click_carrot 0
scoreboard players set @s read_cs 0
