
#function custom_craft:set_custom_crafter
# detect -> set barrel
#execute at @e[type=item,nbt={Item:{id:"minecraft:firework_star",tag:{Tags:["lacrafteuse"]},Count:1b}}] if block ~ ~-1 ~ crafting_table as @s run setblock ~ ~-1 ~ barrel
# set armorstand
#execute as @e[type=item,nbt={Item:{id:"minecraft:firework_star",tag:{Tags:["lacrafteuse"]},Count:1b}}] if block ~ ~-1 ~ barrel at @s run summon minecraft:armor_stand ~ ~-1 ~ {Invisible:1b,NoGravity:1b,Small:1b,Tags:["customCrafter"]}
# initialize crafter
#execute as @e[type=item,nbt={Item:{id:"minecraft:firework_star",tag:{Tags:["lacrafteuse"]},Count:1b}}] if block ~ ~-1 ~ barrel at @s run scoreboard players set @e[tag=customCrafter,sort=nearest,limit=1] craftDone 0
# kill item
#execute as @e[type=item,nbt={Item:{id:"minecraft:firework_star",tag:{Tags:["lacrafteuse"]},Count:1b}}] if block ~ ~-1 ~ barrel at @s run kill @e[type=item,nbt={Item:{id:"minecraft:firework_star",tag:{Tags:["lacrafteuse"]},Count:1b}},sort=nearest,limit=1]

# kill armor stand
#execute at @e[tag=customCrafter] if block ~ ~ ~ air run kill @e[tag=customCrafter,sort=nearest,limit=1]


# find correct items and summon an armor stand
execute as @e[type=item,nbt={Item:{id:"minecraft:firework_star",tag:{Tags:["lacrafteuse"]},Count:1b},OnGround:1b}] at @s run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Tags:["crafterSetter"]}

# delete item
execute as @e[tag=crafterSetter] at @s run kill @e[type=item,nbt={Item:{id:'minecraft:firework_star',tag:{Tags:["lacrafteuse"]},Count:1b}},sort=nearest,limit=1]
# set barrel
execute as @e[tag=crafterSetter] at @s run setblock ~ ~ ~ barrel
execute as @e[tag=crafterSetter] at @s run summon minecraft:armor_stand ~ ~1 ~ {Invisible:1b,Invulnerable:1b,Small:1b,Tags:["customCrafter"],CustomName:'{"text":"crafter"}'}
execute as @e[tag=crafterSetter] run scoreboard players set @e[tag=customCrafter,sort=nearest,limit=1] craftDone 0
# kill setter
execute as @e[tag=crafterSetter] run kill @e[tag=crafterSetter,sort=nearest,limit=1]

# delete table
execute at @e[tag=customCrafter] if block ~ ~-1 ~ air run kill @e[tag=customCrafter,sort=nearest,limit=1]