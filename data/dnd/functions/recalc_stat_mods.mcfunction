# Assumed context:
# no context
scoreboard players add STATMOD_RECALC logfile 1

scoreboard players operation @s strength_mod = @s strength
scoreboard players operation @s strength_mod -= TEN const
scoreboard players operation @s strength_mod /= TWO const

scoreboard players operation @s dexterity_mod = @s dexterity
scoreboard players operation @s dexterity_mod -= TEN const
scoreboard players operation @s dexterity_mod /= TWO const

scoreboard players operation @s constitution_mod = @s constitution
scoreboard players operation @s constitution_mod -= TEN const
scoreboard players operation @s constitution_mod /= TWO const

scoreboard players operation @s intelligence_mod = @s intelligence
scoreboard players operation @s intelligence_mod -= TEN const
scoreboard players operation @s intelligence_mod /= TWO const

scoreboard players operation @s wisdom_mod = @s wisdom
scoreboard players operation @s wisdom_mod -= TEN const
scoreboard players operation @s wisdom_mod /= TWO const

scoreboard players operation @s charisma_mod = @s charisma
scoreboard players operation @s charisma_mod -= TEN const
scoreboard players operation @s charisma_mod /= TWO const


