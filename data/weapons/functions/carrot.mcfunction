# Ender Wand
# execute at @a[scores={carrot=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["enderWand"]}}}] as @a[scores={carrot=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["enderWand"]}}}] run execute as @s run summon ender_pearl ^ ^ ^
# scoreboard players reset @a[scores={carrot=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["enderWand"]}}}] carrot

# Fireball Wand
execute at @a[scores={carrot=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["fireballWand"]}}}] as @a[scores={carrot=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["fireballWand"]}}}] run execute as @s run summon minecraft:fireball ^ ^1 ^2 {ExplosionPower:1,direction:[0.0,0.0,0.0]}
scoreboard players reset @a[scores={carrot=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["fireballWand"]}}}] carrot

# Rocket Wand
# execute at @a[scores={carrot=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["rocketWand"]}}}] as @a[scores={carrot=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["rocketWand"]}}}] run execute as @s run summon minecraft:firework_rocket ^ ^ ^ {LifeTime:30,FireworksItem:{Count:1,tag:{Fireworks:{Flight:3,Explosions:[{Type:1,Flicker:0,Trail:0}]}}}}
# scoreboard players reset @a[scores={carrot=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["rocketWand"]}}}] carrot

# reset carrot
execute at @a[scores={carrot=1..}] as @a[scores={carrot=1..}] run execute as @s run say right cliked!
scoreboard players reset @a[scores={carrot=1..}] carrot