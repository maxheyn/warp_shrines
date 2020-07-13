# --------------------------------------------------------------- #
#                     WARP SHRINES DATAPACK                       #
# --------------------------------------------------------------- #
#                                                                 #
#              Author: https://github.com/maxheyn                 #
#                                                                 #
# --------------------------------------------------------------- #

kill @s

# Text indicator for player
tellraw @a[distance=..5] {"text":"The Warp Stone reacts with the Beacon...","bold":false,"italic":true,"color":"#632DD7"}

# Cool visual and audio effects when thrown
playsound minecraft:block.portal.trigger master @a[distance=..5] ~ ~ ~ 1.0 0.75 1.0

# Summon player detector
execute align xyz positioned ~0.5 ~ ~0.5 run summon armor_stand ~ ~ ~ {Tags:["ws_shrine","ws_unlinked"],Invisible:true,CustomNameVisible:true,CustomName:'"Warp Shrine"'} 

# Update scoreboard variables
scoreboard players add $ws_shrineCount ws_shrineCount 1

# Force the chunk to be loaded so you it can be found when teleporting to it
forceload add ~ ~
# Teleport command
#teleport @p @e[type=minecraft:armor_stand,nbt={Tags:["ws_playerDetector","start"],Invisible:true,CustomNameVisible:true,CustomName:'{"text":"WARP SHRINE"}'},limit=1]