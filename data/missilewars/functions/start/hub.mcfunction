scoreboard players set @s m.Game -2
scoreboard players reset @s ToggleRanked
scoreboard players reset @s JoinSpectators
scoreboard players reset @s JoinGreen
scoreboard players reset @s JoinBlue
scoreboard players reset @s JoinRed
scoreboard players reset @s JoinBlack
scoreboard players reset @s Practice
scoreboard players reset @s ClearPractice
scoreboard players reset @s Heal
scoreboard players reset @s Leave
scoreboard players reset @s ChooseMap
scoreboard players reset @s MapVote
scoreboard players operation @s MapVote = @s PrevMapVote
scoreboard players reset @s GiveBook
scoreboard players reset @s ChooseMissileSet
scoreboard players reset @s MissileSetSelect

tag @e[type=marker,distance=0..,tag=PracticeArea,tag=InUse,sort=nearest,limit=1] remove InUse