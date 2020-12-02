# craft ID
scoreboard objectives add craftID dummy
scoreboard players set @e[name=crafter] craftID 0

# check recipe
scoreboard objectives add isRecipe dummy
scoreboard players set @e[name=crafter] isRecipe 1

# check result
scoreboard objectives add isResult dummy
scoreboard players set @e[name=crafter] isResult 1

# clear recipe and reset table
scoreboard objectives add changeRecipe dummy

# clear result and reset table
scoreboard objectives add takeResult dummy

# check if there is craft
scoreboard objectives add craftDone dummy
scoreboard players set @e[name=crafter] craftDone 0