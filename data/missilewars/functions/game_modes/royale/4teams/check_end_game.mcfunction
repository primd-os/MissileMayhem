execute unless score @s m.BlueWin matches 1 unless entity @a[team=!m.Blue,x=0,tag=!m.RoyaleDead,team=!m.Spectator] run scoreboard players set @s m.PreBlueWin 1
execute unless score @s m.GreenWin matches 1 unless entity @a[team=!m.Green,x=0,tag=!m.RoyaleDead,team=!m.Spectator] run scoreboard players set @s m.PreGreenWin 1
execute unless score @s m.RedWin matches 1 unless entity @a[team=!m.Red,x=0,tag=!m.RoyaleDead,team=!m.Spectator] run scoreboard players set @s m.PreRedWin 1
execute unless score @s m.PurpleWin matches 1 unless entity @a[team=!m.Purple,x=0,tag=!m.RoyaleDead,team=!m.Spectator] run scoreboard players set @s m.PrePurpleWin 1
execute if score @s m.PreBlueWin matches 1 run scoreboard players set @a[x=0] m.RespawnTimer -1
execute if score @s m.PreGreenWin matches 1 run scoreboard players set @a[x=0] m.RespawnTimer -1
execute if score @s m.PreRedWin matches 1 run scoreboard players set @a[x=0] m.RespawnTimer -1
execute if score @s m.PrePurpleWin matches 1 run scoreboard players set @a[x=0] m.RespawnTimer -1
execute if score @s m.PreBlueWin matches 1 run tag @a[x=0] remove m.RoyaleDead
execute if score @s m.PreGreenWin matches 1 run tag @a[x=0] remove m.RoyaleDead
execute if score @s m.PreRedWin matches 1 run tag @a[x=0] remove m.RoyaleDead
execute if score @s m.PrePurpleWin matches 1 run tag @a[x=0] remove m.RoyaleDead
execute if score @s m.PreBlueWin matches 1 run scoreboard players set @s m.BlueWin 1
execute if score @s m.PreGreenWin matches 1 run scoreboard players set @s m.GreenWin 1
execute if score @s m.PreRedWin matches 1 run scoreboard players set @s m.RedWin 1
execute if score @s m.PrePurpleWin matches 1 run scoreboard players set @s m.PurpleWin 1

function missilewars:game_modes/4teams/end_game