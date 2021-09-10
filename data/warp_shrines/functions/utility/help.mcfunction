# --------------------------------------------------------------- #
#                     WARP SHRINES DATAPACK                       #
# --------------------------------------------------------------- #
#                                                                 #
#              Author: https://github.com/maxheyn                 #
#                                                                 #
# --------------------------------------------------------------- #

# Help text, shown when player runs /trigger ws_help
tellraw @s ["",{"text":"Warp Shrines Help:","color":"yellow","bold":true}]
tellraw @s ["",{"text":"1. ","color":"green"},{"text":"Place a beacon where you want to have the warp shrine.","color":"yellow"}]
tellraw @s ["",{"text":"2. ","color":"green"},{"text":"Craft a Warp Stone with 4 diamonds, 4 ender pearls, and a nether star.","color":"yellow"}]
tellraw @s ["",{"text":"3. ","color":"green"},{"text":"Toss the Warp Stone onto the Beacon","color":"yellow"}]
tellraw @s ["",{"text":"4. ","color":"green"},{"text":"Craft a Link Pearl on a Smithing Table with an Ender Pearl and Dragon's Breath.","color":"yellow"}]
tellraw @s ["",{"text":"5. ","color":"green"},{"text":"Throw an Link Pearl onto the shrine to set the first link.","color":"yellow"}]
tellraw @s ["",{"text":"6. ","color":"green"},{"text":"Make another shrine and toss another Link Pearl on it to link the two shrines together.","color":"yellow"}]
tellraw @s ["",{"text":"7. ","color":"green"},{"text":"Destroy a shrine by setting the block under it on fire.","color":"red"}]

# Disable help after running once so it doesn't run every tick
scoreboard players set @s ws_help 0
scoreboard players enable @s ws_help
