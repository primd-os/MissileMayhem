scoreboard players set @a StartVote 0

function missilewars:maps/load_map
scoreboard players set GreenWin Constants 0
scoreboard players set BlueWin Constants 0
gamemode survival @a[gamemode=!creative]
gamemode spectator @a[team=Spectator,gamemode=!creative]

scoreboard players set @a DirectionPlace 0