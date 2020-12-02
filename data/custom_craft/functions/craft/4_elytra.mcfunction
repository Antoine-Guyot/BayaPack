# set craft
execute as @e[name=crafter,scores={craftDone=0,craftID=4}] at @s run data modify block ~ ~-1 ~ Items append value {id:"minecraft:elytra",Slot:15b,Count:1b}

# check result
execute as @e[name=crafter,scores={craftID=4}] at @s run scoreboard players set @s isResult 0
execute as @e[name=crafter,scores={craftID=4}] at @s if block ~ ~-1 ~ barrel{Items:[{id:"minecraft:elytra",Count:1b,Slot:15b}]} run scoreboard players set @s isResult 1

# check recipe
execute as @e[name=crafter,scores={craftID=4}] at @s run scoreboard players set @s isRecipe 0
execute as @e[name=crafter,scores={craftID=4}] at @s if block ~ ~-1 ~ barrel{Items:[{id:"minecraft:string",Count:1b,Slot:2b},{id:"minecraft:phantom_membrane",Count:1b,Slot:10b,tag:{Tags:["reinforced_membrane"]}},{id:"minecraft:phantom_membrane",Count:1b,Slot:12b,tag:{Tags:["reinforced_membrane"]}},{id:"minecraft:phantom_membrane",Count:1b,Slot:19b,tag:{Tags:["reinforced_membrane"]}},{id:"minecraft:phantom_membrane",Count:1b,Slot:21b,tag:{Tags:["reinforced_membrane"]}}]} run scoreboard players set @s isRecipe 1
