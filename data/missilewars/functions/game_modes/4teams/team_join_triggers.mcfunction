function missilewars:game_modes/2teams/team_join_triggers

execute as @s[scores={JoinRed=1}] run function missilewars:start/join/red
execute as @s[scores={JoinRed=1}] run scoreboard players set @s JoinRed 0

execute as @s[scores={JoinPurple=1}] run function missilewars:start/join/purple
execute as @s[scores={JoinPurple=1}] run scoreboard players set @s JoinPurple 0