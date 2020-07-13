# --------------------------------------------------------------- #
#                     WARP SHRINES DATAPACK                       #
# --------------------------------------------------------------- #
#                                                                 #
#              Author: https://github.com/maxheyn                 #
#                                                                 #
# --------------------------------------------------------------- #

# Swaps out the Structure Void for the Warp Stone (circumvent NBT crafting)
clear @s structure_void 1
give @p ender_pearl{display:{Name:'[{"text":"Link Pearl","italic":true,"color":"dark_aqua"}]',Lore:['[{"text":"The dragon\'s breath has seems to","italic":true,"color":"#632DD7"}]','[{"text":"have enchanted the bauble.","italic":true,"color":"#632DD7"}]']},Enchantments:[{id:infinity,lvl:1}],HideFlags:1} 1