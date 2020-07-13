# --------------------------------------------------------------- #
#                     WARP SHRINES DATAPACK                       #
# --------------------------------------------------------------- #
#                                                                 #
#              Author: https://github.com/maxheyn                 #
#                                                                 #
# --------------------------------------------------------------- #

# Delete the other shrine first
execute as @e[tag=ws_shrine] unless entity @s[distance=..2] if score @e[sort=nearest,limit=1] gateway = @s gateway at @s run forceload remove ~ ~
execute as @e[tag=ws_shrine] unless entity @s[distance=..2] if score @e[sort=nearest,limit=1] gateway = @s gateway run scoreboard players remove #count gateway 1
execute as @e[tag=ws_shrine] unless entity @s[distance=..2] if score @e[sort=nearest,limit=1] gateway = @s gateway run kill @s

execute at @s run particle minecraft:portal ~ ~ ~ 0 0 0 0.5 1000

# Delete this shrine
forceload remove ~ ~
kill @s