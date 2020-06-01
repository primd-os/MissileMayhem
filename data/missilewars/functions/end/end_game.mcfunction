scoreboard players set @e[tag=BlueBase] GameState 2
execute if score BlueWin Constants matches 1 run title @a title {"text":"Blue Wins!","color":"blue"}
execute if score GreenWin Constants matches 1 run title @a title {"text":"Green Wins!","color":"green"}
schedule function missilewars:end/finish_game 5s
execute if score BlueWin Constants matches 1 at @e[tag=GreenBase] run fill -25 0 ~ 25 46 ~ minecraft:air
execute if score GreenWin Constants matches 1 at @e[tag=BlueBase] run fill -25 0 ~ 25 46 ~ minecraft:air
execute if score BlueWin Constants matches 1 at @e[tag=GreenBase] run particle minecraft:explosion 0 25 ~ 25 25 0 2 200 force
execute if score GreenWin Constants matches 1 at @e[tag=BlueBase] run particle minecraft:explosion 0 25 ~ 25 25 0 2 200 force
execute if score GreenWin Constants matches 1 at @e[tag=BlueBase] run playsound minecraft:entity.generic.explode master @a 0 25 ~ 100
execute if score BlueWin Constants matches 1 at @e[tag=GreenBase] run playsound minecraft:entity.generic.explode master @a 0 25 ~ 100
gamemode spectator @a
scoreboard players set @a StartVote 0