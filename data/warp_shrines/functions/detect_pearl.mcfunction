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
execute at @e[tag=ws_shrine,limit=1,sort=nearest] run summon lightning_bolt
execute at @e[tag=ws_shrine,limit=1,sort=nearest] run summon phantom ~ ~30 ~ {Tags:["ws_warpMob"],CustomName:"\"Warp Stalker\"",ActiveEffects:[{Id:12,Amplifier:0,Duration:999999,ShowParticles:0b}],Passengers:[{Tags:["ws_warpMob"],id:"vex",CustomName:"Warp-Twisted Keeper"}]}
execute at @e[tag=ws_shrine,limit=1,sort=nearest] run summon phantom ~ ~30 ~ {Tags:["ws_warpMob"],CustomName:"\"Warp Stalker\"",ActiveEffects:[{Id:12,Amplifier:0,Duration:999999,ShowParticles:0b}],Passengers:[{Tags:["ws_warpMob"],id:"vex",CustomName:"Warp-Twisted Keeper"}]}
execute at @e[tag=ws_shrine,limit=1,sort=nearest] run summon phantom ~ ~30 ~ {Tags:["ws_warpMob"],CustomName:"\"Warp Stalker\"",ActiveEffects:[{Id:12,Amplifier:0,Duration:999999,ShowParticles:0b}],Passengers:[{Tags:["ws_warpMob"],id:"vex",CustomName:"Warp-Twisted Keeper"}]}
execute at @e[tag=ws_shrine,limit=1,sort=nearest] run summon phantom ~ ~30 ~ {Tags:["ws_warpMob"],CustomName:"\"Alpha Warp Stalker\"",ActiveEffects:[{Id:11,Amplifier:2,Duration:999999,ShowParticles:0b},{Id:12,Amplifier:0,Duration:999999,ShowParticles:0b}],Size:15}

# One pearl = 1 new linked shrine
execute run scoreboard players add $ws_shrineCount ws_linkID 1

# Setup part of the link
execute at @e[tag=ws_shrine,tag=ws_unlinked,sort=nearest,limit=1] as @p run function warp_shrines:set_link


