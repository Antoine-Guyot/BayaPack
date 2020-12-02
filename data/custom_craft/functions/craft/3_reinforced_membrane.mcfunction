# set craft
execute as @e[name=crafter,scores={craftDone=0,craftID=3}] at @s run data modify block ~ ~-1 ~ Items append value {id:"minecraft:phantom_membrane",Slot:15b,Count:1b,display:{Name:'[{"text":"reinforced membrane","bold":true}]'},tag:{Tags:["reinforced_membrane"]}}

# check result
execute as @e[name=crafter,scores={craftID=3}] at @s run scoreboard players set @s isResult 0
execute as @e[name=crafter,scores={craftID=3}] at @s if block ~ ~-1 ~ barrel{Items:[{id:"minecraft:phantom_membrane",Slot:15b,Count:1b,tag:{Tags:["reinforced_membrane"]}}]} run scoreboard players set @s isResult 1

# check recipe
execute as @e[name=crafter,scores={craftID=3}] at @s run scoreboard players set @s isRecipe 0
execute as @e[name=crafter,scores={craftID=3}] at @s if block ~ ~-1 ~ barrel{Items:[{id:"minecraft:phantom_membrane",Slot:2b,Count:1b},{id:"minecraft:phantom_membrane",Slot:10b,Count:1b},{id:"minecraft:leather",Slot:11b,Count:1b},{id:"minecraft:phantom_membrane",Slot:12b,Count:1b},{id:"minecraft:phantom_membrane",Slot:20b,Count:1b}]} run scoreboard players set @s isRecipe 1
