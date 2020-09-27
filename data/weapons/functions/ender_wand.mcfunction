# execute at @a[scores={enderWandClick=1..}] as @a[scores={enderWandClick=1..}] run execute as @s run say right cliked!
# scoreboard players reset @a[scores={enderWandClick=1..}] enderWandClick

execute at @a[scores={enderWandClick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["enderWand"]}}}] as @a[scores={enderWandClick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["enderWand"]}}}] run execute as @s run say Staff of Fire!
scoreboard players reset @a[scores={enderWandClick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["enderWand"]}}}] enderWandClick
execute at @a[scores={enderWandClick=1..}] as @a[scores={enderWandClick=1..}] run execute as @s run say right cliked!
scoreboard players reset @a[scores={enderWandClick=1..}] enderWandClick