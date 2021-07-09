scoreboard players set @s m.Game -2
scoreboard players reset @s ToggleRanked
scoreboard players reset @s JoinSpectators
scoreboard players reset @s JoinGreen
scoreboard players reset @s JoinBlue
scoreboard players reset @s JoinRed
scoreboard players reset @s JoinPurple
scoreboard players reset @s Practice
scoreboard players reset @s ClearPractice
scoreboard players reset @s Heal
scoreboard players reset @s Leave
scoreboard players reset @s ChooseMap
scoreboard players reset @s GiveBook
scoreboard players reset @s ChooseMissileSet

tag @s remove m.GotRace

tag @e[type=marker,distance=0..,tag=PracticeArea,tag=InUse,sort=nearest,limit=1] remove InUse