#execute as @s at @e[tag=ts_itemDetection,distance=..3,limit=1,sort=nearest] if entity @e[tag=ts_itemDetection,distance=..3,limit=1,sort=nearest] run function ts:delete_shrine

#summon armor_stand ~ ~ ~ {Invisible:1b,Tags:["ws_playerWarp"]}

#execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:nether_star", Count: 1b}}] at @e run summon minecraft:lightning_bolt ~ ~ ~
#execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:nether_star", Name:[{"text":"Warp Stone","italic":true}]}}] if entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:beacon"}},distance=..1] at @e run function ws:create_shrine
#say pog champion
#setblock ~ ~-1 ~ minecraft:water
kill @e[type=!player]