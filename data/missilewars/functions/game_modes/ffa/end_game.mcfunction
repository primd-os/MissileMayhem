scoreboard players set @e[type=marker,tag=GameMarker,x=0] m.GameState 2
clear @a[x=0]
title @a[x=0] times 10 50 10
title @a[x=0] title [{"selector":"@a[x=0,tag=m.WonFFA]","color":"yellow"},{"text":" Wins!","color":"yellow"}]
advancement grant @a[x=0,tag=m.WonFFA] only missilewars:win_game
title @a[x=0,tag=m.WonFFA] subtitle {"text":"Congratz!","color":"green"}
playsound minecraft:ui.toast.challenge_complete block @a[x=0,tag=m.WonFFA] ~ ~ ~ 1 2 1
title @a[x=0,tag=!m.WonFFA] subtitle {"text":"Better Luck Next Time","color":"red"}
execute if entity @e[type=marker,tag=GameMarker,x=0,scores={m.Timer=-900..}] run advancement grant @a[x=0,tag=m.WonFFA] only missilewars:2gud4u
execute if entity @e[type=marker,tag=GameMarker,x=0,scores={m.Timer=-200..}] run advancement grant @a[x=0,tag=m.WonFFA] only missilewars:manipulation
execute if entity @s[scores={m.GameState=2}] run scoreboard players operation @s m.EndTimer = EndTime m.Constants