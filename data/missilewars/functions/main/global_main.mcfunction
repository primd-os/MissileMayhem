execute unless score @s m.UUID1 matches -2147483648..2147483647 store result score @s m.UUID1 run data get entity @s UUID[0] 1
scoreboard players enable @s[scores={m.Game=0}] Practice
execute unless score @s m.Game matches 0 run scoreboard players reset @s Practice

execute as @s[scores={Practice=1}] run function missilewars:practice/join
execute as @s[scores={Practice=1}] run scoreboard players set @s Practice 0

execute as @s[scores={m.Game=0}] run function missilewars:main/lobby_main
scoreboard players enable @s[scores={m.Game=0..}] ChooseMap
scoreboard players enable @s[scores={m.Game=0..}] GiveBook