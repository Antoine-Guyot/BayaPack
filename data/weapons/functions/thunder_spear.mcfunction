execute as @e[type=trident,tag=!alreadyZap,nbt={Trident:{tag:{Tags:["thunderSpear"]}}}] at @s positioned ~-3 ~-3 ~-3 if entity @e[dx=5,dy=5,dz=5,nbt={HurtTime:10s}] run tag @s add zap
execute as @e[type=trident,tag=!alreadyZap,nbt={inGround:1b,Trident:{tag:{Tags:["thunderSpear"]}}}] run tag @s add zap
execute at @e[type=trident,tag=zap] run summon lightning_bolt
tag @e[type=trident,tag=zap] add alreadyZap
tag @e[type=trident,tag=zap] remove zap