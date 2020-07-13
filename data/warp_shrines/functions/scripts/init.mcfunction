# --------------------------------------------------------------- #
#                     WARP SHRINES DATAPACK                       #
# --------------------------------------------------------------- #
#                                                                 #
#              Author: https://github.com/maxheyn                 #
#                                                                 #
# --------------------------------------------------------------- #

# Set initalization boolean to true so we don't loop intialization
scoreboard players set $ws_init ws_initialized 1


# Other scoreboard stuff
scoreboard objectives add ws_linkID dummy
scoreboard objectives add ws_help dummy
scoreboard objectives add ws_shrineCount dummy

scoreboard players enable @a ws_help
scoreboard players enable @a ws_linkID
scoreboard players set $ws_shrineCount ws_shrineCount 0

# Add help trigger
scoreboard objectives add ws_help trigger

# Initialization Message
tellraw @a ["",{"text":"Warp Shrines Datapack Initialized","underlined":true,"color":"green"}]

