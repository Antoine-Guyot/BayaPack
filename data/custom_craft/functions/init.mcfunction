# scoreboard craftID ?
# scoreboard objectives add craftID dummy
# scoreboard players set @e[name=crafter] craftID 0

scoreboard objectives add takeResult dummy
scoreboard players set @e[name=crafter] takeResult 0

scoreboard objectives add craftSuccess dummy
scoreboard players set @e[name=crafter] craftSuccess 0

scoreboard objectives add changeRecipe dummy
scoreboard players set @e[name=crafter] changeRecipe 0
