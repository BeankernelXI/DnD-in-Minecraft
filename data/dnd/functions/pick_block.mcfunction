# Assumed context:
# at a block as the looking player
scoreboard players add PICK_BLOCK logfile 1

tag @s add it_me
# reapply 'pick_block' to an old friend
execute align xyz positioned ~0.5 ~ ~0.5 as @e[distance=0,tag=picked_block] if score @s effect_id = PICK_BLOCK effect_id if score @s player_id = @a[tag=it_me,limit=1] player_id run tag @s add pick_block
tag @s remove it_me

# keep it alive if you haven't looked away
tag @e[tag=pick_block] add spoken_for

execute align xyz positioned ~0.5 ~ ~0.5 unless entity @e[tag=pick_block] run summon minecraft:shulker ~ ~ ~ {NoAI:true,Size:1,Glowing:true,Invulnerable:true,Silent:true,Tags:["spoken_for","pick_block"]}
scoreboard players operation @e[tag=pick_block] player_id = @s player_id
scoreboard players operation @e[tag=pick_block] effect_id = @s effect_id
# {ActiveEffects:{Id:14}} but I can't be bothered to test it atm
effect give @e[tag=pick_block] minecraft:invisibility 1000000 1 true

# and if you clicked they get to live!
execute if score @s click_carrot matches 1.. as @e[tag=target] run tag @s add locked
execute if score @s click_carrot matches 1.. align xyz positioned ~0.5 ~ ~0.5 as @e[tag=pick_block] run tag @s add locked

tag @e[tag=pick_block] add picked_block
tag @e[tag=picked_block] remove pick_block

