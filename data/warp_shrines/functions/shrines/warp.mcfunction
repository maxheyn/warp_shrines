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
playsound minecraft:entity.enderman.teleport master @e[type=player,distance=..10] ~ ~ ~ 15 1
execute unless score @a[tag=ws_teleporting,sort=nearest,limit=1] ws_woosh matches ..0 run title @a[tag=ws_teleporting] title {"text":"Woosh!","color":"#632DD7"}

# Teleport the player!
tp @p @s


