execute if entity @a[team=Green] if entity @a[team=Blue] run function missilewars:end/add_points

scoreboard players set Running Constants 0
scoreboard players set BlueWin Constants 0
scoreboard players set GreenWin Constants 0
scoreboard players set Ending Constants 0

team empty Blue
team empty Green
team empty Spectators
effect give @a instant_health 1 100
team join Lobby @a

scoreboard players set @a Game 0

execute as @a run function missilewars:main/clear_inv
kill @e[type=item]
kill @e[type=arrow]
kill @e[type=fireball]
kill @e[type=area_effect_cloud,tag=BlueBase]
kill @e[type=area_effect_cloud,tag=GreenBase]