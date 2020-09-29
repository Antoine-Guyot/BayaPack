# Ender Wand
# execute at @a[scores={carrot=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["enderWand"]}}}] as @a[scores={carrot=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["enderWand"]}}}] run execute as @s run say Staff of Fire!
# scoreboard players reset @a[scores={carrot=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["enderWand"]}}}] carrot

# Fireball Wand
execute at @a[scores={carrot=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["fireballWand"]}}}] as @a[scores={carrot=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["fireballWand"]}}}] run execute as @s run summon minecraft:fireball ~ ~1.5 ~ {ExplosionPower:1,direction:[0.0,0.0,0.0]}
scoreboard players reset @a[scores={carrot=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["fireballWand"]}}}] carrot

# reset carrot
execute at @a[scores={carrot=1..}] as @a[scores={carrot=1..}] run execute as @s run say right cliked!
scoreboard players reset @a[scores={carrot=1..}] carrot