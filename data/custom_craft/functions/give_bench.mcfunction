recipe take @s custom_craft:bench
advancement revoke @s only custom_craft:bench_adv
clear @s minecraft:knowledge_book
give @s skeleton_spawn_egg{display:{Name:'[{"text":"Bench","bold":true}]'},EntityTag:{id:"minecraft:silverfish",NoAI:1b,PersistenceRequired:1b,NoGravity:1b,Attributes:[{Name:"generic.movementSpeed",Base:0f}],Silent:1,Tags:["benchSpawn"]}} 1
