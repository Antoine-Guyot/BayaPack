# check recipe
scoreboard objectives add isRecipe dummy

# check result
scoreboard objectives add isResult dummy

# clear recipe and reset table
scoreboard objectives add changeRecipe dummy

# clear result and reset table
scoreboard objectives add takeResult dummy

# check if there is craft
scoreboard objectives add craftDone dummy
scoreboard players set @e[name=crafter] craftDone 0

# reset table
scoreboard objectives add resetCraft dummy