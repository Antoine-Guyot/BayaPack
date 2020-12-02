# set craft
execute as @e[name=crafter,scores={craftDone=0,craftID=1}] at @s run data modify block ~ ~-1 ~ Items append value {id:"minecraft:diamond",Slot:15b,Count:1b}

# check result
execute as @e[name=crafter,scores={craftID=1}] at @s run scoreboard players set @s isResult 0
execute as @e[name=crafter,scores={craftID=1}] at @s if block ~ ~-1 ~ barrel{Items:[{id:"minecraft:diamond",Count:1b,Slot:15b}]} run scoreboard players set @s isResult 1

# check recipe
execute as @e[name=crafter,scores={craftID=1}] at @s run scoreboard players set @s isRecipe 0
execute as @e[name=crafter,scores={craftID=1}] at @s if block ~ ~-1 ~ barrel{Items:[{id:"minecraft:stick",Count:1b,Slot:11b}]} run scoreboard players set @s isRecipe 1
