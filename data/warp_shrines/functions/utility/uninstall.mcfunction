# --------------------------------------------------------------- #
#                     WARP SHRINES DATAPACK                       #
# --------------------------------------------------------------- #
#                                                                 #
#              Author: https://github.com/maxheyn                 #
#                                                                 #
# --------------------------------------------------------------- #

# Removes all scoreboard objectives and disables the datapack
scoreboard objectives remove ws_help
scoreboard objectives remove ws_mobs
scoreboard objectives remove ws_linkID 
scoreboard objectives remove ws_woosh
scoreboard objectives remove ws_shrineCount 

kill @e[tag=ws_shrine]
kill @e[tag=ws_warpMob]

tellraw @p [{"text":"[Datapack] ","color":"gold"},{"text":"Warp Shrines has been uninstalled!","color":"red"}]

datapack disable "file/warp_shrines.zip"