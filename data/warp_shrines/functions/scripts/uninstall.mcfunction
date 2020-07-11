
scoreboard objectives remove ws_initialized
scoreboard objectives remove ws_help

tellraw @p ["",{"text":"Warp Shrines Datapack has been disabled.","color":"red"}]
tellraw @p ["",{"text":"[Click here to re-enable the datapack.]","color":"aqua","clickEvent":{"action":"run_command","value":"/datapack enable \"file/warp_shrines\""}}]

datapack disable "file/warp_shrines"