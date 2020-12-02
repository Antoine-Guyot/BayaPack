# if no more result
execute as @e[name=crafter,scores={isResult=0}] at @s run scoreboard players set @s takeResult 1
# clear recipe
execute as @e[name=crafter,scores={takeResult=1}] at @s run function custom_craft:clear_table
execute as @e[name=crafter,scores={takeResult=1}] at @s run scoreboard players set @s craftID 0
execute as @e[name=crafter,scores={takeResult=1}] at @s run scoreboard players set @s isResult 1
execute as @e[name=crafter,scores={takeResult=1}] at @s run scoreboard players set @s craftDone 0
execute as @e[name=crafter,scores={takeResult=1}] at @s run scoreboard players set @s takeResult 0