team join bench @e[tag=bench]
effect give @e[tag=bench] invisibility 30 0 true

# summon bench
execute at @e[tag=benchSpawn] as @e[tag=benchSpawn] run execute as @s run summon minecraft:horse ~ ~-2 ~ {Variant:0,SaddleItem:{id:"saddle",Count:1},Tame:1,Health:30,NoAI:1,NoGravity:1,PersistenceRequired:1,Silent:1,Invulnerable:1,Attributes:[{Name:"generic.movement_speed",Base:"-1024.0F"},{Name:"horse.jump_strength",Base:0.0F},{Name:"generic.max_health",Base:30F}],Tags:["bench"],DeathLootTable:"minecraft:empty"}
# kill silverfish
kill @e[tag=benchSpawn]

# REMOVE
execute at @e[tag=removeAll] as @e[tag=removeAll] run execute as @s run kill @e[tag=bench,distance=0..3]
kill @e[tag=removeAll]