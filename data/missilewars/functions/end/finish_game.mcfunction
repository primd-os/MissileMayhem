execute if entity @a[team=Green,x=0] if entity @a[team=Blue,x=0] if score @s GameState matches 2 run function missilewars:end/add_points

team leave @a[x=0]
effect give @a[x=0] instant_health 1 100
team join Lobby @a[x=0]

scoreboard players set @a[x=0] Game 0

execute as @a[x=0] run function missilewars:main/clear_inv
kill @e[type=item,x=0]
kill @e[type=arrow,x=0]
kill @e[type=fireball,x=0]
kill @e[type=area_effect_cloud,tag=BlueBase,x=0]
kill @e[type=area_effect_cloud,tag=GreenBase,x=0]

tag @a[x=0] remove dead
execute as @a[x=0] in missilewars:lobby run tp 0 100 0