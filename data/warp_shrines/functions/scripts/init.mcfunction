
# Run install function
function warp_shrines:scripts/install

# Initialization Message
tellraw @a ["",{"text":"Warp Shrines Datapack Initialized","underlined":true,"color":"green"}]

# Set initalization boolean to true so we don't loop intialization
#Key: $ws_init is a fake player where we store it (memory), ws_initalized is our variable storing 1 for true
scoreboard players set $ws_init ws_initialized 1
scoreboard objectives add ts_help trigger "show Thunder Shrine help"
