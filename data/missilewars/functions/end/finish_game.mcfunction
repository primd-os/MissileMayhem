scoreboard objectives setdisplay sidebar points
execute if entity @a[team=Green] if entity @a[team=Blue] run function missilewars:end/add_points

scoreboard players set Running Constants 0
scoreboard players set BlueWin Constants 0
scoreboard players set GreenWin Constants 0
scoreboard players set Ending Constants 0

tp @a 0 101 0
spawnpoint @a 0 100 0
team empty Blue
team empty Green
effect give @a instant_health 1 100
team join Spectator @a

schedule clear missilewars:new_missile/missile_loop
execute as @a run function missilewars:main/clear_inv
kill @e[type=item]
kill @e[type=arrow]
kill @e[type=fireball]