# --------------------------------------------------------------- #
#                     WARP SHRINES DATAPACK                       #
# --------------------------------------------------------------- #
#                                                                 #
#              Author: https://github.com/maxheyn                 #
#             Special thanks to Vanilla Tweaks for                #
#            their datapacks through which I learned              #
#             how to write this, and Code Zealot for              #
#                  the initial datapack setup.                    #
#                                                                 #
#                             URLS:                               #
#          Vanilla Tweaks - https://vanillatweaks.net/            #
#             Code Zealot - http://codezealot.com/                #
#                                                                 #
# --------------------------------------------------------------- #

# Initialization variables and function calls
scoreboard objectives add ws_initialized dummy
scoreboard players enable @a ws_help
execute unless score $ws_init ws_initialized matches 1 run function warp_shrines:scripts/init

# Check to see if the player crafts a warp stone to swap them out
execute as @a[nbt={Inventory:[{id:"minecraft:knowledge_book"}]}] at @s run function warp_shrines:give_warp_stone

# Run shrine creation if player throws a Warp Stone onto a Beacon
execute as @e[type=item,nbt={Item:{id:"minecraft:nether_star",Count:1b,tag:{display:{Name:'[{"text":"Warp Stone","italic":true}]'}}}}] at @e if block ~ ~-1 ~ minecraft:beacon run function warp_shrines:create_shrine

# Fun
execute as @e[tag=ws_playerDetector] at @s run particle minecraft:enchant ~ ~ ~ .1 .1 .1 1 1
