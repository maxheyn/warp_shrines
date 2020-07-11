# --------------------------------------------------------------- #
#                     WARP SHRINES DATAPACK                       #
# --------------------------------------------------------------- #
#                                                                 #
#              Author: https://github.com/maxheyn                 #
#                                                                 #
# --------------------------------------------------------------- #

tellraw @s ["",{"text":"Warp Shrines Help:","color":"yellow","bold":true}]
tellraw @s ["",{"text":"1. ","color":"green"},{"text":"Place a beacon where you want to have the warp shrine","color":"yellow"}]
tellraw @s ["",{"text":"2. ","color":"green"},{"text":"Craft a Warp Stone with 4 diamonds, 4 ender pearls, and a nether star.","color":"yellow"}]
tellraw @s ["",{"text":"3. ","color":"green"},{"text":"Toss the Warp Stone onto the Beacon","color":"yellow"}]
tellraw @s ["",{"text":"4. ","color":"green"},{"text":"Toss an item to designate the warp link.","color":"yellow"}]
tellraw @s ["",{"text":"5. ","color":"green"},{"text":"Make another shrine and toss the same item into it to link them up.","color":"yellow"}]

scoreboard players set @s ws_help 0