# --------------------------------------------------------------- #
#                     WARP SHRINES DATAPACK                       #
# --------------------------------------------------------------- #
#                                                                 #
#              Author: https://github.com/maxheyn                 #
#                                                                 #
# --------------------------------------------------------------- #
say pogu
execute unless score @s ws_linkID matches 1.. run function warp_shrines:scripts/update_score

scoreboard players operation @e[sort=nearest,type=armor_stand,limit=1,tag=ws_shrine] ws_linkID = @s ws_linkID
tag @e[sort=nearest,type=armor_stand,limit=1,tag=ws_shrine,tag=ws_unlinked] remove ws_unlinked

execute as @e[tag=ws_shrine] unless entity @s[distance=..2] if score @e[sort=nearest,limit=1] ws_linkID = @s ws_linkID run scoreboard players reset @p ws_linkID

