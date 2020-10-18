# F3 + i -> get structure code

# find correct items and summon an armor stand
execute as @e[type=item,nbt={Item:{id:"minecraft:apple"}}] at @s run execute as @e[type=item,nbt={Item:{id:"minecraft:bone_meal",Count:3b}},limit=1,sort=nearest,distance=0..1] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["appleTree"]}
# delete items and summon apple trees
execute as @e[tag=appleTree] at @s run kill @e[type=item,nbt={Item:{id:'minecraft:apple',Count:1b}},sort=nearest,limit=1]
execute as @e[tag=appleTree] at @s run kill @e[type=item,nbt={Item:{id:'minecraft:bone_meal',Count:3b}},sort=nearest,limit=1]
execute as @e[tag=appleTree] at @s run setblock ~ ~ ~ minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:0b,powered:0b,seed:0L,author:"?",rotation:"NONE",posX:-3,mode:"LOAD",posY:0,sizeX:7,posZ:-3,integrity:1.0f,showair:0b,name:"minecraft:apple_tree",sizeY:6,sizeZ:7,showboundingbox:1b}
execute as @e[tag=appleTree] at @s run setblock ~ ~1 ~ minecraft:redstone_block
kill @e[type=armor_stand,tag=appleTree]