scoreboard players set Ending Constants 1
execute if score BlueWin Constants matches 1 run title @a title {"text":"Blue Wins","color":"blue"}
execute if score GreenWin Constants matches 1 run title @a title {"text":"Green Wins","color":"green"}
execute if score BlueWin Constants matches 1 run schedule function missilewars:end/finish_game 5s
execute if score GreenWin Constants matches 1 run schedule function missilewars:end/finish_game 5s
execute if score BlueWin Constants matches 1 run fill -25 0 -97 25 26 -97 minecraft:air
execute if score GreenWin Constants matches 1 run fill -25 0 97 25 26 97 minecraft:air
execute if score BlueWin Constants matches 1 run particle minecraft:explosion 0 13 -97 25 12 0 2 200 force
execute if score GreenWin Constants matches 1 run particle minecraft:explosion 0 13 97 25 12 0 2 200 force
playsound minecraft:entity.generic.explode master @a 0 0 0 100
gamemode spectator @a
clear @a