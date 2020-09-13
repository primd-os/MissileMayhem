execute positioned -2.5 30 -2.5 as @a[x=0,tag=Claiming] unless entity @s[x=0,dx=5,dz=5,dy=20] run tellraw @a[x=0] [{"selector": "@s"}, {"text": " is no longer claiming the point."}]
execute positioned -2.5 30 -2.5 as @a[x=0,tag=!Claiming] if entity @s[x=0,dx=5,dz=5,dy=20,gamemode=!spectator] run tellraw @a[x=0] [{"selector": "@s"}, {"text": " is claiming the point."}]
tag @a[x=0] remove Claiming
execute positioned -2.5 30 -2.5 run tag @a[x=0,dx=5,dz=5,dy=20,gamemode=!spectator] add Claiming

execute positioned -2.5 30 -2.5 run effect give @a[x=0,tag=Claiming] glowing 1 0 true
execute positioned -2.5 30 -2.5 if entity @a[x=0,tag=Claiming,team=Blue] run scoreboard players add @e[type=area_effect_cloud,tag=BlueBase,x=0] BlueScore 1
execute positioned -2.5 30 -2.5 if entity @a[x=0,tag=Claiming,team=Green] run scoreboard players add @e[type=area_effect_cloud,tag=BlueBase,x=0] GreenScore 1
execute positioned -2.5 30 -2.5 if entity @a[x=0,tag=Claiming,team=Red] run scoreboard players add @e[type=area_effect_cloud,tag=BlueBase,x=0] RedScore 1
execute positioned -2.5 30 -2.5 if entity @a[x=0,tag=Claiming,team=Black] run scoreboard players add @e[type=area_effect_cloud,tag=BlueBase,x=0] BlackScore 1

execute positioned -2.5 30 -2.5 if entity @a[x=0,tag=Claiming] run scoreboard players add @e[type=area_effect_cloud,tag=BlueBase,x=0] GameClock 1