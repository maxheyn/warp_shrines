say pogga
#execute unless score $ws_shrineCount ws_linkID matches 1.. run scoreboard players set $ws_shrineCount ws_linkID 1
execute run scoreboard players add $ws_shrineCount ws_linkID 1
execute at @e[tag=ws_shrine,tag=ws_unlinked,sort=nearest,limit=1] as @p run function warp_shrines:set_link
