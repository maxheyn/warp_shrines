# --------------------------------------------------------------- #
#                     WARP SHRINES DATAPACK                       #
# --------------------------------------------------------------- #
#                                                                 #
#              Author: https://github.com/maxheyn                 #
#                                                                 #
# --------------------------------------------------------------- #

# Swaps out the Knowledge book for the Warp Stone (circumvent NBT crafting)
tellraw @s ["",{"text":"A Warp Stone has been crafted...","bold":false,"italic":true,"color":"#632DD7"}]
tellraw @s ["",{"text":"It seems to be attracted to the nearest beacon.","bold":false,"italic":true,"color":"#632DD7"}]
clear @s knowledge_book 1
give @p nether_star{tag:"ws_stone",display:{Name:'[{"text":"Warp Stone","italic":true,"color":"dark_aqua"}]',Lore:['[{"text":"It\'s pulsating in your hand...","italic":true,"color":"#632DD7"}]','[{"text":"It seems unstable.","italic":true,"color":"#632DD7"}]']},HideFlags:1} 1
