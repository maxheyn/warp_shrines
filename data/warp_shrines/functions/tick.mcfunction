# --------------------------------------------------------------- #
#                     WARP SHRINES DATAPACK                       #
# --------------------------------------------------------------- #
#                                                                 #
#     Author: Zerukai                                             #
#                                                                 #
###################################################################

# Initialization mumbo jumbo
scoreboard objectives add ws_initialized dummy
scoreboard players enable @a ws_help
execute unless score $ws_init ws_initialized matches 1 run function warp_shrines:scripts/init

# Check to see if the player crafts a warp stone to swap them out
execute as @a[nbt={Inventory:[{id:"minecraft:knowledge_book"}]}] at @s run function warp_shrines:give_warp_stone

# Run shrine creation if player throws a Warp Stone and a Beacon together on the same block
#execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:nether_star", Name:[{"text":"Warp Stone","italic":true}]}}] if entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:beacon"}},distance=..1] at @e run function warp_shrines:create_shrine
#execute as @e[type=item,nbt={Item:{id:"minecraft:nether_star",Count:1b,tag:{display:{Name:'[{"text":"Warp Stone","italic":true}]'}}}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:beacon",Count:1b}}] run function warp_shrines:create_shrine
execute as @e[type=item,nbt={Item:{id:"minecraft:nether_star",Count:1b,tag:{display:{Name:'[{"text":"Warp Stone","italic":true}]'}}}}] at @s run function warp_shrines:create_shrine

#execute as @e[tag=ts_itemDetection] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:beacon",Count:1b}}] run function ts:initiate_storm

# Fun
execute as @e[type=arrow] at @s run function warp_shrines:create_shrine
