recipe take @s custom_craft:remove_all
advancement revoke @s only custom_craft:remove_all_adv
clear @s minecraft:knowledge_book
give @s mooshroom_spawn_egg{display:{Name:'[{"text":"Remove","color":"dark_red","bold":true}]'},EntityTag:{id:"minecraft:silverfish",NoAI:1b,PersistenceRequired:1b,NoGravity:1b,Attributes:[{Name:"generic.movementSpeed",Base:0f}],Silent:1,Tags:["removeAll"]}} 5
