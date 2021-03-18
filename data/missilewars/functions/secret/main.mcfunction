scoreboard players enable @s Leave
scoreboard players enable @s TPA
scoreboard players enable @s[tag=Requested] TPAccept
scoreboard players reset @s[tag=!Requested] TPAccept
execute as @s[scores={Leave=1}] run function missilewars:secret/clear
execute as @s[scores={Leave=1}] run function missilewars:end/leave
execute as @s[scores={Leave=1}] run scoreboard players set @s Leave 0
execute as @s[scores={TPA=1..},tag=!tpReady] at @s run function missilewars:secret/tplist
execute as @s[scores={TPA=1..},tag=tpReady] at @s run function missilewars:secret/tpa
execute as @s[scores={TPAccept=1..}] at @s run function missilewars:secret/tpaccept
execute as @s[scores={TPAccept=1..}] run scoreboard players set @s TPAccept 0