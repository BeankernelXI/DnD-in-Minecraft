# Assumed context:
# as player who needs a new book
scoreboard players add GIVE_CS logfile 1


# Don't forget to add a Table of Contents
# clickEvent:{action:"change_page"} will make happy players




# There's no easy way to have this work in offhands, so until the final version it will only support mainhand
replaceitem entity @s weapon.mainhand minecraft:written_book{author:"DM",title:"Character Sheet",pages:['[{"text":"STR: "},{"score":{"name":"*","objective":"strength"}},{"text":" ("},{"score":{"name":"*","objective":"strength_mod"}},{"text":")\\n"},{"text":"DEX: "},{"score":{"name":"*","objective":"dexterity"}},{"text":" ("},{"score":{"name":"*","objective":"dexterity_mod"}},{"text":")\\n"},{"text":"CON: "},{"score":{"name":"*","objective":"constitution"}},{"text":" ("},{"score":{"name":"*","objective":"constitution_mod"}},{"text":")\\n"},{"text":"INT: "},{"score":{"name":"*","objective":"intelligence"}},{"text":" ("},{"score":{"name":"*","objective":"intelligence_mod"}},{"text":")\\n"},{"text":"WIS: "},{"score":{"name":"*","objective":"wisdom"}},{"text":" ("},{"score":{"name":"*","objective":"wisdom_mod"}},{"text":")\\n"},{"text":"CHA: "},{"score":{"name":"*","objective":"charisma"}},{"text":" ("},{"score":{"name":"*","objective":"charisma_mod"}},{"text":")\\n"}]']}

# give @s minecraft:written_book{author:"DM",title:"Test",pages:['[{"selector":"@e[tag=true]"}]']}
# give @s minecraft:written_book{author:"DM",title:"Test",pages:['[{"nbt":"ArmorItems[0].Items[0].tag.pages[0]","entity":"@e[tag=true]"}]']}

# summon armor_stand 0 255 0 {Invisible:true,NoAI:true,Tags:["strings"],ArmorItems:[{id:"minecraft:chest",Count:1,Items:[{id:"minecraft:writable_book",Count:1,tag:{pages:['As a bonus action...']}}]}]}






