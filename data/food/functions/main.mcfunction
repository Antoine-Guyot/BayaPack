# F3 + i -> get structure code

# find correct items and summon an armor stand
execute at @e[type=item,nbt={Item:{id:"minecraft:beetroot_seeds",tag:{Tags:["appleSeed"]},Count:1b}}] if block ~ ~-.5 ~ farmland run execute as @e[type=item,nbt={Item:{id:"minecraft:bone_meal",Count:3b}},limit=1,sort=nearest,distance=0..1] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["appleTree"]}

# delete items and summon apple trees
execute as @e[tag=appleTree] at @s run kill @e[type=item,nbt={Item:{id:'minecraft:beetroot_seeds',tag:{Tags:["appleSeed"]},Count:1b}},sort=nearest,limit=1]
execute as @e[tag=appleTree] at @s run kill @e[type=item,nbt={Item:{id:'minecraft:bone_meal',Count:3b}},sort=nearest,limit=1]
execute as @e[tag=appleTree] at @s run setblock ~ ~1 ~ minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:0b,powered:0b,seed:0L,author:"?",rotation:"NONE",posX:-3,mode:"LOAD",posY:0,sizeX:7,posZ:-3,integrity:1.0f,showair:0b,name:"food:apple_tree",sizeY:6,sizeZ:7,showboundingbox:1b}
execute as @e[tag=appleTree] at @s run setblock ~ ~2 ~ minecraft:redstone_block
kill @e[type=armor_stand,tag=appleTree]

# detect apple base
execute at @e[tag=appleBase] if block ~ ~ ~ air run kill @e[tag=appleFruit,distance=0..4]
execute at @e[tag=appleBase] if block ~ ~ ~ air run kill @e[tag=appleBase,sort=nearest,limit=1]