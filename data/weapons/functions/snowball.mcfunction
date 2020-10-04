# fireball
execute as @a[scores={snowball=1..},nbt={SelectedItem:{id:"minecraft:snowball",tag:{Tags:["throwFireball"]}}}] at @s run summon minecraft:fireball ^ ^1 ^2 {ExplosionPower:1,direction:[0.0,0.0,0.0]}
scoreboard players reset @a[scores={snowball=1..}] snowball