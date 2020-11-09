# check result
execute at @e[name=crafter,scores={craftID=2}] as @e[name=crafter,scores={craftID=2}] run execute as @s run scoreboard players set @s isResult 0
execute at @e[name=crafter,scores={craftID=2}] as @e[name=crafter,scores={craftID=2}] if data block ~ ~-1 ~ Items[{id:"minecraft:netherite_ingot",Count:3b,Slot:15b}] run execute as @s run scoreboard players set @s isResult 1

# check recipe
execute at @e[name=crafter,scores={craftID=2}] as @e[name=crafter,scores={craftID=2}] run execute as @s run scoreboard players set @s isRecipe 0
execute at @e[name=crafter,scores={craftID=2}] as @e[name=crafter,scores={craftID=2}] if data block ~ ~-1 ~ Items[{id:"minecraft:dirt",Count:1b,Slot:11b}] run execute as @s run scoreboard players set @s isRecipe 1