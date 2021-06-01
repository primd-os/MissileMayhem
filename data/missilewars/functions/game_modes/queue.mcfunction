function missilewars:item_managers/bow
execute if score @e[type=marker,tag=GameMarker,x=0,limit=1] m.GameState matches 0 run tp 0 201 0
execute if score @e[type=marker,tag=GameMarker,x=0,limit=1] m.GameState matches 0 run give @s magenta_wool{CanDestroy:["minecraft:magenta_wool"],CanPlaceOn:["minecraft:magenta_wool","minecraft:black_stained_glass"]} 64
execute unless score @e[type=marker,tag=GameMarker,x=0,limit=1] m.GameState matches 0 run function missilewars:game_modes/teamtp