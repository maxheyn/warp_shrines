# Desc: Swaps the knowledge book from the crafting recipe to the warp stone
#
# Called by: advancement: onInventoryChanged

tellraw @s ["",{"text":"A Warp Stone has been crafted...","bold":false,"italic":true,"color":"#632DD7"}]
clear @s knowledge_book 1
give @s nether_star{display:{Name:'[{"text":"Warp Stone","italic":true}]',Lore:['[{"text":"It\'s pulsating in your hand... it feels unstable."}]']}} 1
execute as @s[nbt={Inventory:[{id:"minecraft:knowledge_book"}]}] at @s run function warp_shrines:give_warp_stone
advancement revoke @s only warp_shrines:give_warp_stone
