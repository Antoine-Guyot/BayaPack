# set craft
execute as @e[name=crafter,scores={craftDone=0,craftID=2}] at @s run data modify block ~ ~-1 ~ Items append value {id:"minecraft:netherite_ingot",Slot:15b,Count:3b}

# check result
execute as @e[name=crafter,scores={craftID=2}] at @s run scoreboard players set @s isResult 0
execute as @e[name=crafter,scores={craftID=2}] at @s if block ~ ~-1 ~ barrel{Items:[{id:"minecraft:netherite_ingot",Count:3b,Slot:15b}]} run scoreboard players set @s isResult 1

# check recipe
execute as @e[name=crafter,scores={craftID=2}] at @s run scoreboard players set @s isRecipe 0
execute as @e[name=crafter,scores={craftID=2}] at @s if block ~ ~-1 ~ barrel{Items:[{id:"minecraft:dirt",Count:2b,Slot:11b}]} run scoreboard players set @s isRecipe 1
