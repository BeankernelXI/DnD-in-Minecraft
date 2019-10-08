# Assumed context:
# at a block as the looking player
scoreboard players add PICK_BLOCK logfile 1

# keep it alive if you haven't looked away
execute align xyz positioned ~0.5 ~ ~0.5 as @e[distance=0,tag=pick_block] run tag @s add spoken_for

# it doesn't stricktly need the player_id at the moment, but I'll probably want it
execute align xyz positioned ~0.5 ~ ~0.5 unless entity @e[distance=0,tag=pick_block] align xyz run summon minecraft:shulker ~0.5 ~0 ~0.5 {NoAI:true,Size:1,Glowing:true,Invulnerable:true,Silent:true,Tags:["needs_id","spoken_for","pick_block"]}
scoreboard players operation @e[tag=needs_id] player_id = @s player_id
scoreboard players operation @e[tag=needs_id] effect_id = @s effect_id
# {ActiveEffects:{Id:14}} but I can't be bothered to test it atm
effect give @e[tag=needs_id] minecraft:invisibility 1000000 1 true

tag @e[tag=needs_id] remove needs_id

# and if you clicked it gets to live!
execute if score @s click_carrot matches 1.. align xyz positioned ~0.5 ~ ~0.5 as @e[distance=0,tag=pick_block] run tag @s add locked
