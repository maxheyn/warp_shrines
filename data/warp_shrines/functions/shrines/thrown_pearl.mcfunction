# --------------------------------------------------------------- #
#                     WARP SHRINES DATAPACK                       #
# --------------------------------------------------------------- #
#                                                                 #
#              Author: https://github.com/maxheyn                 #
#                                                                 #
# --------------------------------------------------------------- #

# Text for player feedback, destroy the pearl
tellraw @a[distance=..5] {"text":"The Link Pearl crumbles when placed on the shrine...","bold":false,"italic":true,"color":"#632DD7"}
kill @s

# Fun effects
execute at @e[tag=ws_shrine,limit=1,sort=nearest] run particle minecraft:totem_of_undying ~ ~ ~ 0 0 0 0.85 1000
execute at @a[distance=..10] run playsound minecraft:entity.ender_eye.death master @a ~ ~ ~ 15 1

# One pearl = 1 new linked shrine
execute run scoreboard players add $ws_shrineCount ws_linkID 1

# Setup part of the link
execute at @e[tag=ws_shrine,tag=ws_unlinked,sort=nearest,limit=1] as @p run function warp_shrines:shrines/set_link


