scoreboard players enable @s Practice

execute as @s[scores={Practice=1}] run function missilewars:practice/join
execute as @s[scores={Practice=1}] run scoreboard players set @s Practice 0