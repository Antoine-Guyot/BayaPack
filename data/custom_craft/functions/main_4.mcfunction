# initialize value
scoreboard players set @e[name=crafter] changeRecipe 0
scoreboard players set @e[name=crafter] takeResult 0


# detect craft 1
execute as @e[name=crafter,scores={craftDone=0}] at @s if data block ~ ~-1 ~ Items[{id:"minecraft:stick",Count:1b,Slot:11b}] run scoreboard players set @s craftID 1
execute as @e[name=crafter,scores={craftDone=0,craftID=1}] at @s run replaceitem block ~ ~-1 ~ container.15 diamond
execute as @e[name=crafter,scores={craftID=1}] at @s run function custom_craft:craft_diamond_3
# detect craft 2
execute as @e[name=crafter,scores={craftDone=0}] at @s if data block ~ ~-1 ~ Items[{id:"minecraft:dirt",Count:1b,Slot:11b}] run scoreboard players set @s craftID 2
execute as @e[name=crafter,scores={craftDone=0,craftID=2}] at @s run replaceitem block ~ ~-1 ~ container.15 netherite_ingot 3
execute as @e[name=crafter,scores={craftID=2}] at @s run function custom_craft:craft_netherite_3

# set craft done
execute as @e[name=crafter,scores={craftID=1..}] at @s run scoreboard players set @s craftDone 1


# if no recipe
execute as @e[name=crafter,scores={isRecipe=0}] at @s run scoreboard players set @s changeRecipe 1
# clear result
execute as @e[name=crafter,scores={changeRecipe=1}] at @s run replaceitem block ~ ~-1 ~ container.15 air
execute as @e[name=crafter,scores={changeRecipe=1}] at @s run scoreboard players set @s craftID 0
execute as @e[name=crafter,scores={changeRecipe=1}] at @s run scoreboard players set @s isRecipe 1
execute as @e[name=crafter,scores={changeRecipe=1}] at @s run scoreboard players set @s craftDone 0

# if no result
execute as @e[name=crafter,scores={isResult=0}] at @s run scoreboard players set @s takeResult 1
# clear recipe
execute as @e[name=crafter,scores={takeResult=1}] at @s run replaceitem block ~ ~-1 ~ container.11 air
execute as @e[name=crafter,scores={takeResult=1}] at @s run scoreboard players set @s craftID 0
execute as @e[name=crafter,scores={takeResult=1}] at @s run scoreboard players set @s isResult 1
execute as @e[name=crafter,scores={takeResult=1}] at @s run scoreboard players set @s craftDone 0
