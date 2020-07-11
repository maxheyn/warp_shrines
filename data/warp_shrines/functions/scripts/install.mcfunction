# --------------------------------------------------------------- #
#                     WARP SHRINES DATAPACK                       #
# --------------------------------------------------------------- #
#                                                                 #
#              Author: https://github.com/maxheyn                 #
#                                                                 #
# --------------------------------------------------------------- #

# Initialization Message
tellraw @a ["",{"text":"Warp Shrines Datapack Initialized","underlined":true,"color":"green"}]

# Set initalization boolean to true so we don't loop intialization
# Key: $ws_init is a fake player where we store it (memory), ws_initalized is our variable storing 1 for true
scoreboard players set $ws_init ws_initialized 1
scoreboard objectives add ws_help trigger "show Warp Shrine help"