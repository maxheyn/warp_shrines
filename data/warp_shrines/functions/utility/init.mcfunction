# --------------------------------------------------------------- #
#                     WARP SHRINES DATAPACK                       #
# --------------------------------------------------------------- #
#                                                                 #
#              Author: https://github.com/maxheyn                 #
#                                                                 #
# --------------------------------------------------------------- #

# Global variable storing to spawn mobs or not
scoreboard objectives add ws_mobs dummy
scoreboard players set $ws_mobs ws_mobs 1

# Add triggers
scoreboard objectives add ws_help trigger
scoreboard objectives add ws_woosh trigger

# Other scoreboard stuff
scoreboard objectives add ws_linkID dummy
scoreboard objectives add ws_shrineCount dummy

scoreboard players set @s ws_help 0
scoreboard players set @s ws_woosh 1
scoreboard players enable @a ws_help
scoreboard players enable @a ws_woosh
scoreboard players enable @a ws_linkID
scoreboard players set $ws_shrineCount ws_shrineCount 0

# Other fun things
title @a times 20 20 20

