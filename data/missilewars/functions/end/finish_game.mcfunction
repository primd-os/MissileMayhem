scoreboard players set Running Constants 0
scoreboard players set BlueWin Constants 0
scoreboard players set GreenWin Constants 0
scoreboard players set Ending Constants 0

scoreboard objectives setdisplay sidebar

tp @a 0 100 0
spawnpoint @a 0 100 0
team empty Blue
team empty Green
effect give @a instant_health 1 100
team join Spectator @a
gamemode adventure @a

schedule clear missilewars:new_missile/missile_loop
execute as @a run function missilewars:main/clear_inv
xp set @a 0 points
kill @e[type=item]