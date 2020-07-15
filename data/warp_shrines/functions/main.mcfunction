# --------------------------------------------------------------- #
#                     WARP SHRINES DATAPACK                       #
# --------------------------------------------------------------- #
#                                                                 #
#              Author: https://github.com/maxheyn                 #
#   Special thanks to Vanilla Tweaks for their datapacks through  #
#   which I learned how to write this, and Code Zealot for the    #
#   initial datapack setup.                                       #
#                                                                 #
#                             URLS:                               #
#          Vanilla Tweaks: https://vanillatweaks.net/             #
#             Code Zealot: http://codezealot.com/                 #
#                                                                 #
# --------------------------------------------------------------- #

# Initialization variables and function calls
scoreboard objectives add ws_initialized dummy
execute unless score $ws_init ws_initialized matches 1 run function warp_shrines:scripts/init

# Player help and utility
execute as @a if score @s ws_help matches 1.. run function warp_shrines:utility/help
scoreboard players enable @a ws_woosh

# Check to see if the player crafts special items and swaps them out
execute as @a[nbt={Inventory:[{id:"minecraft:knowledge_book"}]}] at @s run function warp_shrines:utility/give_warp_stone
execute as @a[nbt={Inventory:[{id:"minecraft:structure_void"}]}] at @s run function warp_shrines:utility/give_link_pearl    

# Run shrine creation if player throws a Warp Stone onto a Beacon
execute as @e[type=item,nbt={Item:{id:"minecraft:nether_star",Count:1b,tag:{display:{Name:'[{"text":"Warp Stone","italic":true,"color":"dark_aqua"}]'}}}}] at @s if block ~ ~-1 ~ minecraft:beacon unless entity @e[tag=ws_shrine,distance=..1] run function warp_shrines:shrines/create_shrine

# Set link between shrines
execute as @e[type=item,nbt={Item:{id:"minecraft:ender_pearl",Count:1b,tag:{display:{Name:'[{"text":"Link Pearl","italic":true,"color":"dark_aqua"}]'}}}}] at @s if entity @e[distance=..1,tag=ws_unlinked] run function warp_shrines:shrines/thrown_pearl

# Teleportation check and execute
execute at @e[tag=ws_shrine,tag=!ws_unlinked] if entity @p[tag=!ws_teleporting,distance=..0.7] as @e[tag=ws_shrine,tag=!ws_unlinked] unless entity @s[distance=..2] if score @e[sort=nearest,limit=1] ws_linkID = @s ws_linkID at @p[tag=!ws_teleporting,distance=..1] run function warp_shrines:shrines/warp
execute as @e[tag=ws_teleporting] at @s unless entity @e[tag=ws_shrine,distance=..1] run tag @s remove ws_teleporting

# Remove shrines if the beacon underneath is broken
execute as @e[tag=ws_shrine] at @s if block ~ ~ ~ minecraft:fire run function warp_shrines:shrines/remove_shrines

# Fun particles!
execute as @e[tag=ws_shrine,tag=!ws_unlinked] at @s run particle minecraft:portal ~ ~ ~ .1 .1 .1 1 1
execute as @e[tag=ws_warpMob] at @s run particle minecraft:portal ~ ~ ~ .1 .1 .1 1 5
execute as @e[tag=ws_teleporting] at @s run particle minecraft:reverse_portal ~ ~ ~ .1 .1 .1 0.01 50
