execute as @a[x=0,tag=Claiming] run tag @s add m.WasClaiming
tag @a[x=0] remove Claiming
execute if score Map m.Variables matches 2 positioned -2.5 15 -2.5 run tag @a[distance=0..,dx=5,dz=5,dy=20,gamemode=!spectator] add Claiming
execute unless score Map m.Variables matches 2 positioned -2.5 15 -2.5 run tag @a[distance=0..,dx=5,dz=5,dy=35,gamemode=!spectator] add Claiming

execute as @a[x=0,tag=Claiming,tag=!m.WasClaiming] run tellraw @a[x=0] [{"selector": "@s"}, {"text": " is claiming the point."}]
execute as @a[x=0,tag=Claiming,tag=!m.WasClaiming] at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 0.5 2

execute as @a[x=0,tag=!Claiming,tag=m.WasClaiming] run tellraw @a[x=0] [{"selector": "@s"}, {"text": " is no longer claiming the point."}]
execute as @a[x=0,tag=!Claiming,tag=m.WasClaiming] at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 0.5 0.5

tag @a[x=0] remove m.WasClaiming

execute if score Map m.Variables matches 2 run particle minecraft:dust 0 1.0 0 2 0 35 -2.5 0.625 0 0 0 5 force
execute if score Map m.Variables matches 2 run particle minecraft:dust 0 1.0 0 2 0 35 2.5 0.625 0 0 0 5 force
execute if score Map m.Variables matches 2 run particle minecraft:dust 0 1.0 0 2 -2.5 35 0 0 0 0.625 0 5 force
execute if score Map m.Variables matches 2 run particle minecraft:dust 0 1.0 0 2 2.5 35 0 0 0 0.625 0 5 force
execute unless score Map m.Variables matches 2 run particle minecraft:dust 0 1.0 0 2 0 50 -2.5 0.625 0 0 0 5 force
execute unless score Map m.Variables matches 2 run particle minecraft:dust 0 1.0 0 2 0 50 2.5 0.625 0 0 0 5 force
execute unless score Map m.Variables matches 2 run particle minecraft:dust 0 1.0 0 2 -2.5 50 0 0 0 0.625 0 5 force
execute unless score Map m.Variables matches 2 run particle minecraft:dust 0 1.0 0 2 2.5 50 0 0 0 0.625 0 5 force

effect give @a[distance=0..,tag=Claiming] glowing 1 0 true
execute as @a[x=0,tag=Claiming,team=m.Blue] run scoreboard players add @e[type=marker,tag=GameMarker,x=0] m.BlueScore 1
execute as @a[x=0,tag=Claiming,team=m.Green] run scoreboard players add @e[type=marker,tag=GameMarker,x=0] m.GreenScore 1
execute as @a[x=0,tag=Claiming,team=m.Red] run scoreboard players add @e[type=marker,tag=GameMarker,x=0] m.RedScore 1
execute as @a[x=0,tag=Claiming,team=m.Purple] run scoreboard players add @e[type=marker,tag=GameMarker,x=0] m.PurpleScore 1
execute as @a[x=0,tag=Claiming,team=m.FFA] run scoreboard players add @s m.FFAScore 1