execute positioned -2.5 15 -2.5 as @a[x=0,tag=Claiming] unless entity @s[distance=0..,dx=5,dz=5,dy=35] run tellraw @a[x=0] [{"selector": "@s"}, {"text": " is no longer claiming the point."}]
execute positioned -2.5 15 -2.5 as @a[x=0,tag=!Claiming] if entity @s[distance=0..,dx=5,dz=5,dy=35,gamemode=!spectator] run tellraw @a[x=0] [{"selector": "@s"}, {"text": " is claiming the point."}]
tag @a[x=0] remove Claiming
execute positioned -2.5 15 -2.5 run tag @a[distance=0..,dx=5,dz=5,dy=35,gamemode=!spectator] add Claiming

execute positioned -2.5 15 -2.5 run effect give @a[distance=0..,tag=Claiming] glowing 1 0 true
execute positioned -2.5 15 -2.5 as @a[x=0,tag=Claiming,team=Blue] run scoreboard players add @e[type=marker,tag=GameMarker,x=0] m.BlueScore 1
execute positioned -2.5 15 -2.5 as @a[x=0,tag=Claiming,team=Green] run scoreboard players add @e[type=marker,tag=GameMarker,x=0] m.GreenScore 1
execute positioned -2.5 15 -2.5 as @a[x=0,tag=Claiming,team=Red] run scoreboard players add @e[type=marker,tag=GameMarker,x=0] m.RedScore 1
execute positioned -2.5 15 -2.5 as @a[x=0,tag=Claiming,team=Black] run scoreboard players add @e[type=marker,tag=GameMarker,x=0] m.BlackScore 1

execute positioned -2.5 15 -2.5 if entity @a[x=0,tag=Claiming] run scoreboard players add @e[type=marker,tag=GameMarker,x=0] m.GameClock 1