execute if score missile_time Constants matches 0 run function missilewars:new_missile/new_missile
execute if score missile_time Constants matches 0 run scoreboard players set missile_time Constants 6
schedule function missilewars:new_missile/missile_loop 2.3s
scoreboard players remove missile_time Constants 1
xp add @a -1 points
execute if score missile_time Constants matches 5 run xp set @a 6 points