execute at @e[name=crafter,scores={craftSuccess=1}] as @e[name=crafter,scores={craftSuccess=1}] run execute as @s run scoreboard players set @s takeResult 0

execute at @e[name=crafter,scores={craftSuccess=0}] as @e[name=crafter,scores={craftSuccess=0}] if data block ~ ~-1 ~ Items[{id:"minecraft:stick",Count:1b,Slot:11b}] run execute as @s run replaceitem block ~ ~-1 ~ container.15 diamond
execute at @e[name=crafter] as @e[name=crafter] if data block ~ ~-1 ~ Items[{id:"minecraft:stick",Count:1b,Slot:11b}] run execute as @s run scoreboard players set @s craftSuccess 1
execute at @e[name=crafter,scores={craftSuccess=1}] as @e[name=crafter,scores={craftSuccess=1}] run execute as @s run scoreboard players set @s changeRecipe 1
execute at @e[name=crafter] as @e[name=crafter] if data block ~ ~-1 ~ Items[{id:"minecraft:stick",Count:1b,Slot:11b}] run execute as @s run scoreboard players set @s changeRecipe 0


execute at @e[name=crafter,scores={craftSuccess=1}] as @e[name=crafter,scores={craftSuccess=1}] if data block ~ ~-1 ~ Items[{id:"minecraft:diamond",Slot:15b}] run execute as @s run scoreboard players set @s takeResult 1
execute at @e[name=crafter,scores={takeResult=0,craftSuccess=1}] as @e[name=crafter,scores={takeResult=0,craftSuccess=1}] run execute as @s run replaceitem block ~ ~-1 ~ container.11 air


execute at @e[name=crafter,scores={takeResult=0,craftSuccess=1}] as @e[name=crafter,scores={takeResult=0,craftSuccess=1}] run execute as @s run scoreboard players set @s craftSuccess 0

execute at @e[name=crafter,scores={changeRecipe=1}] as @e[name=crafter,scores={changeRecipe=1}] run execute as @s run replaceitem block ~ ~-1 ~ container.15 air
execute at @e[name=crafter,scores={changeRecipe=1}] as @e[name=crafter,scores={changeRecipe=1}] run execute as @s run scoreboard players set @s craftSuccess 0
execute at @e[name=crafter,scores={changeRecipe=1}] as @e[name=crafter,scores={changeRecipe=1}] run execute as @s run scoreboard players set @s changeRecipe 0
