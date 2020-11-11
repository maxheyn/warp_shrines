# --------------------------------------------------------------- #
#                     WARP SHRINES DATAPACK                       #
# --------------------------------------------------------------- #
#                                                                 #
#              Author: https://github.com/maxheyn                 #
#                                                                 #
# --------------------------------------------------------------- #

# Delete the other shrine first
execute as @e[tag=ws_shrine] unless entity @s[distance=..2] if score @e[sort=nearest,limit=1] ws_linkID = @s ws_linkID at @s run forceload remove ~ ~
execute as @e[tag=ws_shrine] unless entity @s[distance=..2] if score @e[sort=nearest,limit=1] ws_linkID = @s ws_linkID run kill @s

# Fun particles and sound
execute at @s run particle minecraft:portal ~ ~ ~ 0 0 0 0.5 1000
execute at @s run summon lightning_bolt
execute at @a[distance=..10] run playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 15 1
execute at @s run summon vex ~ ~1 ~ {CustomName:"\"Warp-Twisted Keeper\""}
execute at @s run summon vex ~ ~1 ~ {CustomName:"\"Warp-Twisted Keeper\""}

# Remove fire
setblock ~ ~ ~ air

# Delete this shrine
forceload remove ~ ~
kill @s