# --------------------------------------------------------------- #
#                     WARP SHRINES DATAPACK                       #
# --------------------------------------------------------------- #
#                                                                 #
#              Author: https://github.com/maxheyn                 #
#                                                                 #
# --------------------------------------------------------------- #

kill @s

# Text indicator for player
tellraw @a[distance=..5] {"text":"The Warp Stone reacts with the beacon...","bold":false,"italic":true,"color":"#632DD7"}

# Summon shrine, make it face the player, and even out the eyes
execute align xyz positioned ~0.5 ~ ~0.5 run summon armor_stand ~ ~ ~ {Tags:["ws_shrine","ws_unlinked"],Invisible:true,CustomNameVisible:true,CustomName:'"Warp Shrine"',NoGravity:true}
execute as @e[tag=ws_shrine,tag=ws_unlinked,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ facing entity @p feet
execute at @p run data merge entity @e[type=minecraft:armor_stand,limit=1,sort=nearest] {Pose:{Head:[0f,0f,0f]}}

# Cool visual and audio effects when thrown
playsound minecraft:block.portal.trigger master @a[distance=..5] ~ ~ ~ 1.0 0.75 1.0
execute at @e[tag=ws_shrine,limit=1,sort=nearest] run particle minecraft:cloud ~ ~ ~ 0 0 0 0.5 250
execute at @e[tag=ws_shrine,limit=1,sort=nearest] run summon lightning_bolt
execute at @e[tag=ws_shrine,limit=1,sort=nearest] run summon phantom ~ ~30 ~ {Tags:["ws_warpMob"],CustomName:"\"Warp Stalker\"",ActiveEffects:[{Id:12,Amplifier:0,Duration:999999,ShowParticles:0b}],Passengers:[{Tags:["ws_warpMob"],id:"vex",CustomName:"\"Warp-Twisted Keeper\""}]}
execute at @e[tag=ws_shrine,limit=1,sort=nearest] run summon phantom ~ ~30 ~ {Tags:["ws_warpMob"],CustomName:"\"Warp Stalker\"",ActiveEffects:[{Id:12,Amplifier:0,Duration:999999,ShowParticles:0b}],Passengers:[{Tags:["ws_warpMob"],id:"vex",CustomName:"\"Warp-Twisted Keeper\""}]}
execute at @e[tag=ws_shrine,limit=1,sort=nearest] run summon phantom ~ ~30 ~ {Tags:["ws_warpMob"],CustomName:"\"Warp Stalker\"",ActiveEffects:[{Id:12,Amplifier:0,Duration:999999,ShowParticles:0b}],Passengers:[{Tags:["ws_warpMob"],id:"vex",CustomName:"\"Warp-Twisted Keeper\""}]}
execute at @e[tag=ws_shrine,limit=1,sort=nearest] run summon phantom ~ ~30 ~ {Tags:["ws_warpMob"],CustomName:"\"Alpha Warp Stalker\"",ActiveEffects:[{Id:11,Amplifier:2,Duration:999999,ShowParticles:0b},{Id:12,Amplifier:0,Duration:999999,ShowParticles:0b}],Size:15}

# Update scoreboard variables
scoreboard players add $ws_shrineCount ws_shrineCount 1

# Force the chunk to be loaded so you it can be found when teleporting to it
forceload add ~ ~


