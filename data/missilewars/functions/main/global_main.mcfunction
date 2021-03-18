scoreboard players enable @s[scores={m.Game=0}] Practice
execute unless score @s m.Game matches 0 run scoreboard players reset @s Practice

execute as @s[scores={Practice=1}] run function missilewars:practice/join
execute as @s[scores={Practice=1}] run scoreboard players set @s Practice 0