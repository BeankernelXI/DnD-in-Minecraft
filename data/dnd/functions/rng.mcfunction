# Assumed context:
# any context
scoreboard players add RNG_FILE logfile 1

# Assumes that RNG has a score in pRNG_mod
# will leave the answer in RNG return


# following "Middle-Square Method"

# reduce seed to 6 digits 
scoreboard players operation RNG pRNG_seed %= TEN_THOUSAND const
# square and extract middle 6 digits
scoreboard players operation RNG pRNG_seed *= RNG pRNG_seed
scoreboard players operation RNG pRNG_seed += MILLION const
scoreboard players operation RNG pRNG_seed /= HUNDRED const
scoreboard players operation RNG return = RNG pRNG_seed

# tellraw BeanKernelXI {"score":{"name":"RNG","objective":"pRNG_seed"}}

# I'm not being picky about modding the bigger number, I don't think it matters
scoreboard players operation RNG return %= RNG pRNG_mod
scoreboard players operation RNG return += ONE const

