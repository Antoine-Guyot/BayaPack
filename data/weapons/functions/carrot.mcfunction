# Fireball Wand
execute at @a[scores={carrot=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["fireballWand"]}}}] as @a[scores={carrot=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["fireballWand"]}}}] run execute as @s run kill @e[type=fireball,tag=fireball]
execute at @a[scores={carrot=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["fireballWand"]}}}] as @a[scores={carrot=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["fireballWand"]}}}] run execute as @s run summon minecraft:fireball ^ ^1 ^2 {ExplosionPower:1,Tags:["fireball"]}
scoreboard players reset @a[scores={carrot=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["fireballWand"]}}}] carrot

# Fireball Wand V2
# execute at @p[scores={shoot1=1},nbt={SelectedItem:{tag:{FireWand:1b}}}] run summon armor_stand ^ ^ ^1 {Tags:["FireBall","Spell"],NoGravity:1b,Invisible:1b,Marker:1b}
# execute at @p[scores={shoot1=1},nbt={SelectedItem:{tag:{FireWand:1b}}}] at @e[tag=FireBall,limit=1,sort=nearest] run tp @e[tag=FireBall,limit=1,sort=nearest] ~ ~0.02 ~ facing entity @p
# execute if score @p shoot1 matches 1.. run scoreboard players set @p shoot1 0
# execute at @e[tag=FireBall] run particle flame ~ ~1 ~ 0 0 0 0.01 25
# execute at @e[tag=FireBall] run tp @e[tag=FireBall,limit=1,sort=nearest] ^ ^ ^-0.4

# reset carrot
# execute at @a[scores={carrot=1..}] as @a[scores={carrot=1..}] run execute as @s run say carrot clic
scoreboard players reset @a[scores={carrot=1..}] carrot