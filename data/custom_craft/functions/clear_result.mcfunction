# if no recipe
execute as @e[name=crafter,scores={isRecipe=0}] at @s run scoreboard players set @s changeRecipe 1
# clear result
execute as @e[name=crafter,scores={changeRecipe=1}] at @s run replaceitem block ~ ~-1 ~ container.15 air
execute as @e[name=crafter,scores={changeRecipe=1}] at @s run scoreboard players set @s craftID 0
execute as @e[name=crafter,scores={changeRecipe=1}] at @s run scoreboard players set @s isRecipe 1
execute as @e[name=crafter,scores={changeRecipe=1}] at @s run scoreboard players set @s craftDone 0
execute as @e[name=crafter,scores={changeRecipe=1}] at @s run scoreboard players set @s changeRecipe 0