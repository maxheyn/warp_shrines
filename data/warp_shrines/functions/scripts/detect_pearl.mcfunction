# --------------------------------------------------------------- #
#                     WARP SHRINES DATAPACK                       #
# --------------------------------------------------------------- #
#                                                                 #
#              Author: https://github.com/maxheyn                 #
#                                                                 #
# --------------------------------------------------------------- #

# One pearl = 1 new linked shrine
execute run scoreboard players add $ws_shrineCount ws_linkID 1

# Setup part of the link
execute at @e[tag=ws_shrine,tag=ws_unlinked,sort=nearest,limit=1] as @p run function warp_shrines:set_link
