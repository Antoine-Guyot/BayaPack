# craft 1 - diamond
execute as @e[name=crafter,scores={craftDone=0}] at @s if block ~ ~-1 ~ barrel[open=true]{Items:[{id:"minecraft:stick",Slot:11b,Count:1b}]} run scoreboard players set @s craftID 1
execute as @e[name=crafter,scores={craftID=1}] at @s run function custom_craft:craft/1_diamond
# craft 2 - netherite
execute as @e[name=crafter,scores={craftDone=0}] at @s if block ~ ~-1 ~ barrel[open=true]{Items:[{id:"minecraft:dirt",Slot:11b,Count:2b}]} run scoreboard players set @s craftID 2
execute as @e[name=crafter,scores={craftID=2}] at @s run function custom_craft:craft/2_netherite
# craft 3 - reinforced_membrane
execute as @e[name=crafter,scores={craftDone=0}] at @s if block ~ ~-1 ~ barrel[open=true]{Items:[{id:"minecraft:phantom_membrane",Slot:2b,Count:1b},{id:"minecraft:phantom_membrane",Slot:10b,Count:1b},{id:"minecraft:leather",Slot:11b,Count:1b},{id:"minecraft:phantom_membrane",Slot:12b,Count:1b},{id:"minecraft:phantom_membrane",Slot:20b,Count:1b}]} run scoreboard players set @s craftID 3
execute as @e[name=crafter,scores={craftID=3}] at @s run function custom_craft:craft/3_reinforced_membrane
# craft 4 - elytra
execute as @e[name=crafter,scores={craftDone=0}] at @s if block ~ ~-1 ~ barrel[open=true]{Items:[{id:"minecraft:string",Count:1b,Slot:2b},{id:"minecraft:phantom_membrane",Count:1b,Slot:10b,tag:{Tags:["reinforced_membrane"]}},{id:"minecraft:phantom_membrane",Count:1b,Slot:12b,tag:{Tags:["reinforced_membrane"]}},{id:"minecraft:phantom_membrane",Count:1b,Slot:19b,tag:{Tags:["reinforced_membrane"]}},{id:"minecraft:phantom_membrane",Count:1b,Slot:21b,tag:{Tags:["reinforced_membrane"]}}]} run scoreboard players set @s craftID 4
execute as @e[name=crafter,scores={craftID=4}] at @s run function custom_craft:craft/4_elytra

# set craft done
execute as @e[name=crafter,scores={craftID=1..}] at @s run scoreboard players set @s craftDone 1

# if no recipe -> clear result
execute as @e[name=crafter,scores={isRecipe=0}] at @s run function custom_craft:clear_result

# if no more result -> clear recipe
execute as @e[name=crafter,scores={isResult=0}] at @s run function custom_craft:clear_recipe