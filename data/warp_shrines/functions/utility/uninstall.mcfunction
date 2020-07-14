# --------------------------------------------------------------- #
#                     WARP SHRINES DATAPACK                       #
# --------------------------------------------------------------- #
#                                                                 #
#              Author: https://github.com/maxheyn                 #
#                                                                 #
# --------------------------------------------------------------- #

# Removes all scoreboard objectives and disables the datapack
scoreboard objectives remove ws_initialized
scoreboard objectives remove ws_help
scoreboard objectives remove ws_linkID 
scoreboard objectives remove ws_woosh
scoreboard objectives remove ws_shrineCount 

tellraw @p ["",{"text":"[Datapack] Warp Shrines Datapack has been disabled.","color":"red"}]
tellraw @p ["",{"text":"[Click here to re-enable Warp Shrines.]","color":"aqua","clickEvent":{"action":"run_command","value":"/datapack enable \"file/warp_shrines\""}}]

datapack disable "file/warp_shrines"