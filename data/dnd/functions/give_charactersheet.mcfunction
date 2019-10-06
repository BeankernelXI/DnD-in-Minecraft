# Assumed context:
# as player who needs a new book
scoreboard players add GIVE_CS logfile 1

# will handle all the different versions

give @s minecraft:written_book{author:"DM",title:"Character Sheet",pages:['[{"text":"STR: "},{"score":{"name":"*","objective":"strength"}},{"text":" ("},{"score":{"name":"*","objective":"strength_mod"}},{"text":")\\n"},{"text":"DEX: "},{"score":{"name":"*","objective":"dexterity"}},{"text":" ("},{"score":{"name":"*","objective":"dexterity_mod"}},{"text":")\\n"},{"text":"CON: "},{"score":{"name":"*","objective":"constitution"}},{"text":" ("},{"score":{"name":"*","objective":"constitution_mod"}},{"text":")\\n"},{"text":"INT: "},{"score":{"name":"*","objective":"intelligence"}},{"text":" ("},{"score":{"name":"*","objective":"intelligence_mod"}},{"text":")\\n"},{"text":"WIS: "},{"score":{"name":"*","objective":"wisdom"}},{"text":" ("},{"score":{"name":"*","objective":"wisdom_mod"}},{"text":")\\n"},{"text":"CHA: "},{"score":{"name":"*","objective":"charisma"}},{"text":" ("},{"score":{"name":"*","objective":"charisma_mod"}},{"text":")\\n"}]']}

