# execute at @e[type=trident] if data entity @s inGround run summon minecraft:lightning_bolt
# execute at @e[type=trident,tag=ThunderSpear] run summon minecraft:lightning_bolt

# execute as @e[type=trident,tag=thunderSpear,tag=!alreadyZapped,nbt={inGround:1b}] run tag @s add zapping
# execute at @e[type=trident,tag=zapping] run summon lightning_bolt
# tag @e[type=trident,tag=zapping] add alreadyZapped
# tag @e[type=trident,tag=zapping] remove zapping

# execute at @e[type=trident,nbt={ThunderSpear}] if data entity @s inGround run summon minecraft:lightning_bolt

# execute as @e[type=trident] run tag @s add ThunderSpear
execute as @e[type=trident,tag=!alreadyZapped,nbt={Trident:{tag:{Tags:["ThunderSpear"]}}}] at @s positioned ~-3 ~-3 ~-3 if entity @e[dx=5,dy=5,dz=5,nbt={HurtTime:10s}] run tag @s add zapping
execute as @e[type=trident,tag=!alreadyZapped,nbt={inGround:1b,Trident:{tag:{Tags:["ThunderSpear"]}}}] run tag @s add zapping
execute at @e[type=trident,tag=zapping] run summon lightning_bolt
tag @e[type=trident,tag=zapping] add alreadyZapped
tag @e[type=trident,tag=zapping] remove zapping