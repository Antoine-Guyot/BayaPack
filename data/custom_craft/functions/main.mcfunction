# initialize value
execute at @e[name=crafter] as @e[name=crafter] run execute as @s run scoreboard players set @s changeRecipe 0
execute at @e[name=crafter] as @e[name=crafter] run execute as @s run scoreboard players set @s takeResult 1
execute at @e[name=crafter] as @e[name=crafter] run execute as @s run scoreboard players set @s resetCraft 0

# detect recipe and set result
execute at @e[name=crafter,scores={craftDone=0}] as @e[name=crafter,scores={craftDone=0}] if data block ~ ~-1 ~ Items[{id:"minecraft:stick",Count:1b,Slot:11b}] run execute as @s run scoreboard players set @s isRecipe 1
execute at @e[name=crafter,scores={isRecipe=1,craftDone=0}] as @e[name=crafter,scores={isRecipe=1,craftDone=0}] if data block ~ ~-1 ~ Items[{id:"minecraft:stick",Count:1b,Slot:11b}] run execute as @s run replaceitem block ~ ~-1 ~ container.15 diamond
execute at @e[name=crafter,scores={isRecipe=1,craftDone=0}] as @e[name=crafter,scores={isRecipe=1,craftDone=0}] if data block ~ ~-1 ~ Items[{id:"minecraft:diamond",Count:1b,Slot:15b}] run execute as @s run scoreboard players set @s isResult 1
# set craft done
execute at @e[name=crafter,scores={isRecipe=1,isResult=1}] as @e[name=crafter,scores={isRecipe=1,isResult=1}] run execute as @s run scoreboard players set @s craftDone 1

# check recipe
execute at @e[name=crafter,scores={craftDone=1}] as @e[name=crafter,scores={craftDone=1}] run execute as @s run scoreboard players set @s isRecipe 0
execute at @e[name=crafter,scores={craftDone=1}] as @e[name=crafter,scores={craftDone=1}] if data block ~ ~-1 ~ Items[{id:"minecraft:stick",Count:1b,Slot:11b}] run execute as @s run scoreboard players set @s isRecipe 1
# check result
execute at @e[name=crafter,scores={craftDone=1}] as @e[name=crafter,scores={craftDone=1}] run execute as @s run scoreboard players set @s isResult 0
execute at @e[name=crafter,scores={craftDone=1}] as @e[name=crafter,scores={craftDone=1}] if data block ~ ~-1 ~ Items[{id:"minecraft:diamond",Count:1b,Slot:15b}] run execute as @s run scoreboard players set @s isResult 1


# clear result and reset
execute at @e[name=crafter,scores={craftDone=1,isResult=0}] as @e[name=crafter,scores={craftDone=1,isResult=0}] run execute as @s run scoreboard players set @s takeResult 0
# clear recipe and reset
execute at @e[name=crafter,scores={craftDone=1,isRecipe=0}] as @e[name=crafter,scores={craftDone=1,isRecipe=0}] run execute as @s run scoreboard players set @s changeRecipe 1


# clear recipe
execute at @e[name=crafter,scores={takeResult=0}] as @e[name=crafter,scores={takeResult=0}] run execute as @s run replaceitem block ~ ~-1 ~ container.11 air
execute at @e[name=crafter,scores={takeResult=0}] as @e[name=crafter,scores={takeResult=0}] run execute as @s run scoreboard players set @s resetCraft 1

# clear result
execute at @e[name=crafter,scores={changeRecipe=1}] as @e[name=crafter,scores={changeRecipe=1}] run execute as @s run replaceitem block ~ ~-1 ~ container.15 air
execute at @e[name=crafter,scores={changeRecipe=1}] as @e[name=crafter,scores={changeRecipe=1}] run execute as @s run scoreboard players set @s resetCraft 1

# reset table
execute at @e[name=crafter,scores={resetCraft=1}] as @e[name=crafter,scores={resetCraft=1}] run execute as @s run scoreboard players set @s isResult 0
execute at @e[name=crafter,scores={resetCraft=1}] as @e[name=crafter,scores={resetCraft=1}] run execute as @s run scoreboard players set @s isRecipe 0
execute at @e[name=crafter,scores={resetCraft=1}] as @e[name=crafter,scores={resetCraft=1}] run execute as @s run scoreboard players set @s craftDone 0
