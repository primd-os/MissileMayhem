execute as @s[scores={JoinSpectators=1}] run function missilewars:start/join_spectators
execute as @s[scores={JoinSpectators=1}] run scoreboard players set @s JoinSpectators 0

execute as @s[scores={JoinPlayers=1}] run function missilewars:start/join/ffa
execute as @s[scores={JoinPlayers=1}] run scoreboard players set @s JoinPlayers 0