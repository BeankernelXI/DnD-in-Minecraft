scoreboard players add SB_INIT logfile 1

# self-tracking 
scoreboard objectives add read_cs minecraft.used:minecraft.written_book
scoreboard objectives add remind_time minecraft.custom:minecraft.time_since_death
scoreboard objectives add global_time minecraft.custom:minecraft.play_one_minute
scoreboard objectives add click_carrot minecraft.used:minecraft.carrot_on_a_stick


# constants
scoreboard objectives add const dummy
scoreboard players set ONE const 1
scoreboard players set TWO const 2
scoreboard players set TEN const 10
scoreboard players set HUNDRED const 100
scoreboard players set TEN_THOUSAND const 10000
scoreboard players set MILLION const 1000000


# effect IDs
scoreboard objectives add effect_id dummy
# use like this: scoreboard players operation @s effect_id = AOE effect_id
# using tags works too, but tags can't easily be transfered so they impede generalization
# if you find yourself having to look up these numbers you've gone wrong somewhere
scoreboard players set AOE effect_id 1
scoreboard players set PICK_BLOCK effect_id 2


# for when you absolutely need to track something across frames
scoreboard objectives add player_id dummy


# D&D stats
scoreboard objectives add strength dummy "Strength"
scoreboard objectives add strength_mod dummy "STR MOD"
scoreboard objectives add dexterity dummy "Dexterity"
scoreboard objectives add dexterity_mod dummy "DEX MOD"
scoreboard objectives add constitution dummy "Constitution"
scoreboard objectives add constitution_mod dummy "CON MOD"
scoreboard objectives add intelligence dummy "Intelligence"
scoreboard objectives add intelligence_mod dummy "INT MOD"
scoreboard objectives add wisdom dummy "Wisdom"
scoreboard objectives add wisdom_mod dummy "WIS MOD"
scoreboard objectives add charisma dummy "Charisma"
scoreboard objectives add charisma_mod dummy "CHA MOD"

# basic function necessities
scoreboard objectives add temp dummy
scoreboard objectives add return dummy

# ---RNG---
# rng returns 1 up to this number, like dice!
scoreboard objectives add pRNG_mod dummy
# seed the RNG with /scoreboard players operation RNG pRNG_seed += * global_time
scoreboard objectives add pRNG_seed dummy
# seeding with a hardcoded value for consistency in testing and for when the global time values are small
scoreboard players set RNG pRNG_seed 3412

# This is super cool but VERY hardcoded. Could give some character even if it isn't customizable
team add samus [{"text":"Red","color":"red"},{"text":" Player","color":"white"}]
team modify samus prefix [{"text":"Samus Aran","bold":true,"color":"red"},{"text":" (","bold":false,"color":"white"}]
team modify samus suffix [{"text":")"}]
# Intentionally keeping team color white. Maybe it's a mistake that'll bite me later but I can't think of any reason now





