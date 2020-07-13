# --------------------------------------------------------------- #
#                     WARP SHRINES DATAPACK                       #
# --------------------------------------------------------------- #
#                                                                 #
#              Author: https://github.com/maxheyn                 #
#                                                                 #
# --------------------------------------------------------------- #

# Help text, shown when player runs `/trigger ws_help`
tellraw @s ["",{"text":"Warp Shrines Help:","color":"yellow","bold":true}]
tellraw @s ["",{"text":"1. ","color":"green"},{"text":"Place a beacon where you want to have the warp shrine","color":"yellow"}]
tellraw @s ["",{"text":"2. ","color":"green"},{"text":"Craft a Warp Stone with 4 diamonds, 4 ender pearls, and a nether star.","color":"yellow"}]
tellraw @s ["",{"text":"3. ","color":"green"},{"text":"Toss the Warp Stone onto the Beacon","color":"yellow"}]
tellraw @s ["",{"text":"4. ","color":"green"},{"text":"Throw an ender pearl onto the shrine to set the first link.","color":"yellow"}]
tellraw @s ["",{"text":"5. ","color":"green"},{"text":"Make another shrine and toss another ender pearl on it to link the two shrines together.","color":"yellow"}]

# Disable help after running once so it doesn't run every tick
scoreboard players set @s ws_help 0