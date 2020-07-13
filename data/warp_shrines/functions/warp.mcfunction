# --------------------------------------------------------------- #
#                     WARP SHRINES DATAPACK                       #
# --------------------------------------------------------------- #
#                                                                 #
#              Author: https://github.com/maxheyn                 #
#                                                                 #
# --------------------------------------------------------------- #

# Adding a tag to the player so that they don't get stuck in a teleport loop on the shrine, remove in tick after they leave the destination shrine
tag @p add ws_teleporting

# Fun effects to make it more immersive
playsound minecraft:entity.enderman.teleport master @p ~ ~ ~ 15 1
effect give @p minecraft:slowness 1 255 true

# Fun!
title @a title {"text":"Woosh!","color":"#632DD7"}

# Teleport the player!
tp @p @s

