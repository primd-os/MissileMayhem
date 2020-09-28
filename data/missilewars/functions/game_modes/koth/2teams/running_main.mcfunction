effect give @s[nbt={SelectedItem:{id:"minecraft:magenta_wool"}}] minecraft:haste 1 10 true
effect give @s minecraft:haste 2 2 true
effect give @s[nbt=!{foodLevel:20}] minecraft:saturation 2 0 true

function missilewars:game_modes/force_gamemode

execute as @s[scores={deathCheck=1..1000}] at @s run function missilewars:game_modes/death

function missilewars:main/manage_items

execute as @s[scores={JoinSpectators=1}] run function missilewars:start/join_spectators
execute as @s[scores={JoinSpectators=1}] run scoreboard players set @s JoinSpectators 0

execute as @s[scores={JoinBlue=1}] run function missilewars:start/join/blue
execute as @s[scores={JoinBlue=1}] run scoreboard players set @s JoinBlue 0

execute as @s[scores={JoinGreen=1}] run function missilewars:start/join/green
execute as @s[scores={JoinGreen=1}] run scoreboard players set @s JoinGreen 0

execute as @s[scores={Leave=1}] run function missilewars:end/leave
execute as @s[scores={Leave=1}] run scoreboard players set @s Leave 0