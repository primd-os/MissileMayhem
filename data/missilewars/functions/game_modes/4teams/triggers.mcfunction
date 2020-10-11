execute if score @e[type=area_effect_cloud,tag=BlueBase,x=0,limit=1] m.GameState matches ..1 run scoreboard players enable @a[x=0] Leave
execute if score @e[type=area_effect_cloud,tag=BlueBase,x=0,limit=1] m.GameState matches 2.. run scoreboard players reset @a[x=0] Leave
execute if score @e[type=area_effect_cloud,tag=BlueBase,x=0,limit=1] m.GameState matches ..1 run scoreboard players enable @a[x=0] JoinSpectators
execute if score @e[type=area_effect_cloud,tag=BlueBase,x=0,limit=1] m.GameState matches 2.. run scoreboard players reset @a[x=0] JoinSpectators
execute if score @e[type=area_effect_cloud,tag=BlueBase,x=0,limit=1] m.GameState matches 0 run scoreboard players enable @a[x=0] JoinGreen
execute unless score @e[type=area_effect_cloud,tag=BlueBase,x=0,limit=1] m.GameState matches 0 run scoreboard players reset @a[x=0] JoinGreen
execute if score @e[type=area_effect_cloud,tag=BlueBase,x=0,limit=1] m.GameState matches 0 run scoreboard players enable @a[x=0] JoinBlue
execute unless score @e[type=area_effect_cloud,tag=BlueBase,x=0,limit=1] m.GameState matches 0 run scoreboard players reset @a[x=0] JoinBlue
execute if score @e[type=area_effect_cloud,tag=BlueBase,x=0,limit=1] m.GameState matches 0 run scoreboard players enable @a[x=0] JoinRed
execute unless score @e[type=area_effect_cloud,tag=BlueBase,x=0,limit=1] m.GameState matches 0 run scoreboard players reset @a[x=0] JoinRed
execute if score @e[type=area_effect_cloud,tag=BlueBase,x=0,limit=1] m.GameState matches 0 run scoreboard players enable @a[x=0] JoinBlack
execute unless score @e[type=area_effect_cloud,tag=BlueBase,x=0,limit=1] m.GameState matches 0 run scoreboard players reset @a[x=0] JoinBlack
scoreboard players reset @a[x=0] ChooseMap
scoreboard players reset @a[x=0] GiveBook
scoreboard players reset @a[x=0] ChooseMissileSet
scoreboard players reset @a[x=0] MissileSetSelect
scoreboard players reset @a[x=0] ToggleRanked