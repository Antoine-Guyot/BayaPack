# gravity effect
execute as @s[scores={jump=1..}] run effect give @s minecraft:levitation 1 1 true
execute as @s at @s unless block ~ ~2 ~ #dimensions:expansion_air run effect clear @s minecraft:levitation
execute as @s run effect give @s minecraft:slow_falling 2 0 true
scoreboard players set @a[scores={jump=1..}] jump 0