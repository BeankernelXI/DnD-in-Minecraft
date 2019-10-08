# Assumed context:
# as each player
scoreboard players add PLAYER_TICK logfile 1
# This is the place to be as messy as we need to be but by the time this function returns it better be clean again
# If J Blow has taught me anything it's to not extend logic across frame boundries


scoreboard players operation @s[nbt={SelectedItem:{tag:{title:"Character Sheet"}}}] effect_id = AOE effect_id 
execute if score @s effect_id = AOE effect_id run function dnd:looking
execute at @e[tag=target,tag=collision] if score @s effect_id = AOE effect_id run function dnd:aoe


scoreboard players operation @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] effect_id = PICK_BLOCK effect_id 
execute if score @s effect_id = PICK_BLOCK effect_id run function dnd:looking
execute at @e[tag=target,tag=collision] if score @s effect_id = PICK_BLOCK effect_id run function dnd:pick_block
scoreboard players set @s click_carrot 0

# for now, they will go away when you swap off the clicker
tag @s add it_me
execute unless entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] as @e[tag=pick_block,tag=locked,tag=!spoken_for] if score @s player_id = @a[tag=it_me,limit=1] player_id run tag @s remove locked
tag @s remove it_me

# ----------
scoreboard players set @s effect_id 0
