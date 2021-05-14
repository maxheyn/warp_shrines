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
execute at @s unless score $ws_mobs ws_mobs matches ..0 run summon vex ~ ~1 ~ {CustomName:"\"Warp-Twisted Keeper\""}
execute at @s unless score $ws_mobs ws_mobs matches ..0 run summon vex ~ ~1 ~ {CustomName:"\"Warp-Twisted Keeper\""}

# Remove fire
setblock ~ ~ ~ air

# Delete this shrine
forceload remove ~ ~
kill @s

# Give you back a Warp Stone
tellraw @s ["",{"text":"The shrine crumbles to dust...","bold":false,"italic":true,"color":"#632DD7"}]
tellraw @s ["",{"text":"You find a single Warp Stone among the ruins. You wonder what happened to the other linked shrine.","bold":false,"italic":true,"color":"#632DD7"}]
give @p nether_star{tag:\"ws_stone\",display:{Name:'[{"text":"Warp Stone","italic":true,"color":"dark_aqua"}]',Lore:['[{"text":"It\'s pulsating in your hand...","italic":true,"color":"#632DD7"}]','[{"text":"It seems unstable.","italic":true,"color":"#632DD7"}]']},HideFlags:1} 1
