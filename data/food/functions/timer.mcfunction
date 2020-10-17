scoreboard players remove fruitTime fruitTimer 1

execute if score fruitTime fruitTimer matches 0 run replaceitem entity @e[tag=appleFruit] weapon.mainhand minecraft:apple
execute if score fruitTime fruitTimer matches 0 run function food:timer_start
execute if score fruitTime fruitTimer matches 1.. run schedule function food:timer 1s