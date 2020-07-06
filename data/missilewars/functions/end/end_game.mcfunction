scoreboard players set @e[tag=BlueBase,x=0] GameState 2
execute if score @e[tag=BlueBase,x=0,limit=1] BlueWin matches 1 run title @a[x=0] title {"text":"Blue Wins!","color":"blue"}
execute if score @e[tag=BlueBase,x=0,limit=1] GreenWin matches 1 run title @a[x=0] title {"text":"Green Wins!","color":"green"}
schedule function missilewars:end/dimension_finish_game 5s
execute if score @e[tag=BlueBase,x=0,limit=1] BlueWin matches 1 at @e[tag=GreenBase,x=0] run fill -25 0 ~ 25 46 ~ minecraft:air
execute if score @e[tag=BlueBase,x=0,limit=1] GreenWin matches 1 at @e[tag=BlueBase,x=0] run fill -25 0 ~ 25 46 ~ minecraft:air
execute if score @e[tag=BlueBase,x=0,limit=1] BlueWin matches 1 at @e[tag=GreenBase,x=0] run particle minecraft:explosion 0 25 ~ 25 25 0 2 200 force
execute if score @e[tag=BlueBase,x=0,limit=1] GreenWin matches 1 at @e[tag=BlueBase,x=0] run particle minecraft:explosion 0 25 ~ 25 25 0 2 200 force
execute if score @e[tag=BlueBase,x=0,limit=1] GreenWin matches 1 at @e[tag=BlueBase,x=0] run playsound minecraft:entity.generic.explode master @a[x=0] 0 25 ~ 100
execute if score @e[tag=BlueBase,x=0,limit=1] BlueWin matches 1 at @e[tag=GreenBase,x=0] run playsound minecraft:entity.generic.explode master @a[x=0] 0 25 ~ 100
gamemode spectator @a[x=0]
scoreboard players set @a[x=0] StartVote 0