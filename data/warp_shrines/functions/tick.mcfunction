# --------------------------------------------------------------- #
#                     WARP SHRINES DATAPACK                       #
# --------------------------------------------------------------- #
#                                                                 #
#              Author: https://github.com/maxheyn                 #
#   Special thanks to Vanilla Tweaks for their datapacks through  #
#   which I learned how to write this, and Code Zealot for the    #
#   initial datapack setup. Also another special thanks to        #
#   CMD-Golem for their Gateway datapack, which helped me learn   #
#   how to set links for the shrines. Much of my code here is     #
#   based off of their linking system they use for their          #
#   datapack, check theirs out below, you might like it more!     #
#                                                                 #
#                             URLS:                               #
#          Vanilla Tweaks - https://vanillatweaks.net/            #
#             Code Zealot - http://codezealot.com/                #
#        Gateway Datapack - https://cmd-golem.jimdofree.com/      #
#                                                                 #
# --------------------------------------------------------------- #

# Initialization variables and function calls
scoreboard objectives add ws_initialized dummy
execute unless score $ws_init ws_initialized matches 1 run function warp_shrines:scripts/init

# Player help
execute as @a if score @s ws_help matches 1.. run function warp_shrines:help

# Check to see if the player crafts special items and swaps them out
execute as @a[nbt={Inventory:[{id:"minecraft:knowledge_book"}]}] at @s run function warp_shrines:give_warp_stone
execute as @a[nbt={Inventory:[{id:"minecraft:structure_void"}]}] at @s run function warp_shrines:give_link_pearl    

# Run shrine creation if player throws a Warp Stone onto a Beacon
execute as @e[type=item,nbt={Item:{id:"minecraft:nether_star",Count:1b,tag:{display:{Name:'[{"text":"Warp Stone","italic":true,"color":"dark_aqua"}]'}}}}] at @s if block ~ ~-1 ~ minecraft:beacon if entity @e[tag=!ws_shrine] run function warp_shrines:create_shrine

# Set link between shrines
execute as @e[type=item,nbt={Item:{id:"minecraft:ender_pearl",Count:1b,tag:{display:{Name:'[{"text":"Link Pearl","italic":true,"color":"dark_aqua"}]'}}}}] at @s if entity @e[distance=..1,tag=ws_unlinked] run function warp_shrines:detect_pearl

# Remove shrines if the beacon underneath is broken
execute as @e[tag=ws_shrine] at @s if block ~ ~-1 ~ minecraft:air run function warp_shrines:remove_shrines

# Teleportation check and execute
execute at @e[tag=ws_shrine,tag=!ws_unlinked] if entity @p[tag=!ws_teleporting,distance=..1] as @e[tag=ws_shrine,tag=!ws_unlinked] unless entity @s[distance=..2] if score @e[sort=nearest,limit=1] ws_linkID = @s ws_linkID at @p[tag=!ws_teleporting,distance=..1] run function warp_shrines:warp
execute as @e[tag=ws_teleporting] at @s unless entity @e[tag=ws_shrine,distance=..1.2] run tag @s remove ws_teleporting

# Fun particles!
execute as @e[tag=ws_shrine] at @s run particle minecraft:portal ~ ~ ~ .1 .1 .1 1 1
execute as @e[tag=ws_warpMob] at @s run particle minecraft:portal ~ ~ ~ .1 .1 .1 1 5
