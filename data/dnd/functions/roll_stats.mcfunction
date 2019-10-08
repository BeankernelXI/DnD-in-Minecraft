# Assumed context:
# any player
scoreboard players add ROLL_STAT logfile 1

scoreboard players operation RNG pRNG_seed += * global_time

scoreboard players set RNG pRNG_mod 6

function dnd:rng
scoreboard players operation ROLL1 temp = RNG return
scoreboard players operation LOWEST temp = ROLL1 temp
function dnd:rng
scoreboard players operation ROLL2 temp = RNG return
scoreboard players operation LOWEST temp < ROLL2 temp
function dnd:rng
scoreboard players operation ROLL3 temp = RNG return
scoreboard players operation LOWEST temp < ROLL3 temp
function dnd:rng
scoreboard players operation ROLL4 temp = RNG return
scoreboard players operation LOWEST temp < ROLL4 temp

scoreboard players operation TOTAL temp = ROLL1 temp
scoreboard players operation TOTAL temp += ROLL2 temp
scoreboard players operation TOTAL temp += ROLL3 temp
scoreboard players operation TOTAL temp += ROLL4 temp
scoreboard players operation TOTAL temp -= LOWEST temp

scoreboard players operation @s strength = TOTAL temp


function dnd:rng
scoreboard players operation ROLL1 temp = RNG return
scoreboard players operation LOWEST temp = ROLL1 temp
function dnd:rng
scoreboard players operation ROLL2 temp = RNG return
scoreboard players operation LOWEST temp < ROLL2 temp
function dnd:rng
scoreboard players operation ROLL3 temp = RNG return
scoreboard players operation LOWEST temp < ROLL3 temp
function dnd:rng
scoreboard players operation ROLL4 temp = RNG return
scoreboard players operation LOWEST temp < ROLL4 temp

scoreboard players operation TOTAL temp = ROLL1 temp
scoreboard players operation TOTAL temp += ROLL2 temp
scoreboard players operation TOTAL temp += ROLL3 temp
scoreboard players operation TOTAL temp += ROLL4 temp
scoreboard players operation TOTAL temp -= LOWEST temp

scoreboard players operation @s dexterity = TOTAL temp


function dnd:rng
scoreboard players operation ROLL1 temp = RNG return
scoreboard players operation LOWEST temp = ROLL1 temp
function dnd:rng
scoreboard players operation ROLL2 temp = RNG return
scoreboard players operation LOWEST temp < ROLL2 temp
function dnd:rng
scoreboard players operation ROLL3 temp = RNG return
scoreboard players operation LOWEST temp < ROLL3 temp
function dnd:rng
scoreboard players operation ROLL4 temp = RNG return
scoreboard players operation LOWEST temp < ROLL4 temp

scoreboard players operation TOTAL temp = ROLL1 temp
scoreboard players operation TOTAL temp += ROLL2 temp
scoreboard players operation TOTAL temp += ROLL3 temp
scoreboard players operation TOTAL temp += ROLL4 temp
scoreboard players operation TOTAL temp -= LOWEST temp

scoreboard players operation @s constitution = TOTAL temp


function dnd:rng
scoreboard players operation ROLL1 temp = RNG return
scoreboard players operation LOWEST temp = ROLL1 temp
function dnd:rng
scoreboard players operation ROLL2 temp = RNG return
scoreboard players operation LOWEST temp < ROLL2 temp
function dnd:rng
scoreboard players operation ROLL3 temp = RNG return
scoreboard players operation LOWEST temp < ROLL3 temp
function dnd:rng
scoreboard players operation ROLL4 temp = RNG return
scoreboard players operation LOWEST temp < ROLL4 temp

scoreboard players operation TOTAL temp = ROLL1 temp
scoreboard players operation TOTAL temp += ROLL2 temp
scoreboard players operation TOTAL temp += ROLL3 temp
scoreboard players operation TOTAL temp += ROLL4 temp
scoreboard players operation TOTAL temp -= LOWEST temp

scoreboard players operation @s intelligence = TOTAL temp


function dnd:rng
scoreboard players operation ROLL1 temp = RNG return
scoreboard players operation LOWEST temp = ROLL1 temp
function dnd:rng
scoreboard players operation ROLL2 temp = RNG return
scoreboard players operation LOWEST temp < ROLL2 temp
function dnd:rng
scoreboard players operation ROLL3 temp = RNG return
scoreboard players operation LOWEST temp < ROLL3 temp
function dnd:rng
scoreboard players operation ROLL4 temp = RNG return
scoreboard players operation LOWEST temp < ROLL4 temp

scoreboard players operation TOTAL temp = ROLL1 temp
scoreboard players operation TOTAL temp += ROLL2 temp
scoreboard players operation TOTAL temp += ROLL3 temp
scoreboard players operation TOTAL temp += ROLL4 temp
scoreboard players operation TOTAL temp -= LOWEST temp

scoreboard players operation @s wisdom = TOTAL temp


function dnd:rng
scoreboard players operation ROLL1 temp = RNG return
scoreboard players operation LOWEST temp = ROLL1 temp
function dnd:rng
scoreboard players operation ROLL2 temp = RNG return
scoreboard players operation LOWEST temp < ROLL2 temp
function dnd:rng
scoreboard players operation ROLL3 temp = RNG return
scoreboard players operation LOWEST temp < ROLL3 temp
function dnd:rng
scoreboard players operation ROLL4 temp = RNG return
scoreboard players operation LOWEST temp < ROLL4 temp

scoreboard players operation TOTAL temp = ROLL1 temp
scoreboard players operation TOTAL temp += ROLL2 temp
scoreboard players operation TOTAL temp += ROLL3 temp
scoreboard players operation TOTAL temp += ROLL4 temp
scoreboard players operation TOTAL temp -= LOWEST temp

scoreboard players operation @s charisma = TOTAL temp
