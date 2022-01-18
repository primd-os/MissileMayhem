execute unless score @s m.BlueWin matches 1 if entity @a[team=m.Blue,z=50,dz=50,x=-200,dx=400,y=0,dy=200,tag=m.GotRace] run scoreboard players set @s m.PreBlueWin 1
execute unless score @s m.GreenWin matches 1 if entity @a[team=m.Green,z=50,dz=50,x=-200,dx=400,y=0,dy=200,tag=m.GotRace] run scoreboard players set @s m.PreGreenWin 1
execute unless score @s m.RedWin matches 1 if entity @a[team=m.Red,z=50,dz=50,x=-200,dx=400,y=0,dy=200,tag=m.GotRace] run scoreboard players set @s m.PreRedWin 1
execute unless score @s m.PurpleWin matches 1 if entity @a[team=m.Purple,z=50,dz=50,x=-200,dx=400,y=0,dy=200,tag=m.GotRace] run scoreboard players set @s m.PrePurpleWin 1
execute if score @s m.PreBlueWin matches 1 run tag @a[x=0] remove m.GotRace
execute if score @s m.PreGreenWin matches 1 run tag @a[x=0] remove m.GotRace
execute if score @s m.PreRedWin matches 1 run tag @a[x=0] remove m.GotRace
execute if score @s m.PrePurpleWin matches 1 run tag @a[x=0] remove m.GotRace
execute if score @s m.PreBlueWin matches 1 run scoreboard players set @s m.BlueWin 1
execute if score @s m.PreGreenWin matches 1 run scoreboard players set @s m.GreenWin 1
execute if score @s m.PreRedWin matches 1 run scoreboard players set @s m.RedWin 1
execute if score @s m.PrePurpleWin matches 1 run scoreboard players set @s m.PurpleWin 1

function missilewars:game_modes/4teams/end_game