# --------------------------------------------------------------- #
#                     WARP SHRINES DATAPACK                       #
# --------------------------------------------------------------- #
#                                                                 #
#              Author: https://github.com/maxheyn                 #
#                                                                 #
# --------------------------------------------------------------- #

# Set initalization boolean to true so we don't loop intialization
scoreboard players set $ws_init ws_initialized 1

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

# Initialization Message
tellraw @a ["",{"text":"[Datapack] Warp Shrines Datapack Initialized","color":"green"}]

# So shrines don't break when lightning
gamerule doFireTick false

# Other fun things
title @a times 20 20 20

