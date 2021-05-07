function missilewars:game_modes/force_gamemode

execute as @s[team=Black,tag=carrier] at @e[type=area_effect_cloud,tag=BlackBase,x=0] positioned ~ ~-20 ~-25 positioned ^ ^ ^-7 positioned ~-1 ~ ~ as @s[dx=3,dy=1,dz=50] run tag @s add success
execute as @s[team=Red,tag=carrier] at @e[type=area_effect_cloud,tag=RedBase,x=0] positioned ~ ~-20 ~-25 positioned ^ ^ ^-7 positioned ~-1 ~ ~ as @s[dx=3,dy=1,dz=50] run tag @s add succes1
execute as @s[team=Blue,tag=carrier] at @e[type=area_effect_cloud,tag=BlueBase,x=0] positioned ~-25 ~-20 ~ positioned ^ ^ ^-7 positioned ~ ~ ~-1 as @s[dx=50,dy=1,dz=3] run tag @s add success
execute as @s[team=Green,tag=carrier] at @e[type=area_effect_cloud,tag=GreenBase,x=0] positioned ~-25 ~-20 ~ positioned ^ ^ ^-7 positioned ~ ~ ~-1 as @s[dx=50,dy=1,dz=3] run tag @s add success
execute as @s[team=Red,tag=success] run scoreboard players add @e[type=area_effect_cloud,tag=GameMarker,x=0] m.RedScore 1
execute as @s[team=Black,tag=success] run scoreboard players add @e[type=area_effect_cloud,tag=GameMarker,x=0] m.BlackScore 1
execute as @s[team=Blue,tag=success] run scoreboard players add @e[type=area_effect_cloud,tag=GameMarker,x=0] m.BlueScore 1
execute as @s[team=Green,tag=success] run scoreboard players add @e[type=area_effect_cloud,tag=GameMarker,x=0] m.GreenScore 1
execute as @s[tag=success] at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["Flag"]}
execute as @s[tag=success] at @s as @e[tag=Flag,tag=taken] if score @s m.UUID1 = @a[sort=nearest,limit=1] m.UUID1 at @s positioned 0 ~ 0 unless entity @s[distance=..1] at @s as @e[type=area_effect_cloud,tag=Base,sort=nearest,limit=1] run function missilewars:game_modes/ctf/remove_flag
execute as @s[tag=success] at @s as @e[tag=Flag,tag=taken] if score @s m.UUID1 = @a[sort=nearest,limit=1] m.UUID1 run kill @s
execute as @s[tag=success] at @s run tag @s remove carrier
execute as @s[tag=success] at @s run tellraw @a[x=0] [{"selector": "@s"},{"text": " has claimed a Flag!"}]
execute as @s[tag=success] at @s run playsound item.book.page_turn block @a[x=0] ~ ~ ~ 1
execute as @s[tag=success] at @s run particle reverse_portal ~ ~ ~ 0 0 0 10 50
tag @s remove success

execute as @s[tag=!carrier,team=Black,gamemode=!spectator] at @s as @e[type=area_effect_cloud,tag=Base,sort=nearest,limit=1] as @s[tag=!BlackBase] as @a[distance=..0.01] as @e[type=area_effect_cloud,distance=..1.5,tag=Flag,tag=!taken] run tag @s add claiming
execute as @s[tag=!carrier,team=Blue,gamemode=!spectator] at @s as @e[type=area_effect_cloud,tag=Base,sort=nearest,limit=1] as @s[tag=!BlueBase] as @a[distance=..0.01] as @e[type=area_effect_cloud,distance=..1.5,tag=Flag,tag=!taken] run tag @s add claiming
execute as @s[tag=!carrier,team=Red,gamemode=!spectator] at @s as @e[type=area_effect_cloud,tag=Base,sort=nearest,limit=1] as @s[tag=!RedBase] as @a[distance=..0.01] as @e[type=area_effect_cloud,distance=..1.5,tag=Flag,tag=!taken] run tag @s add claiming
execute as @s[tag=!carrier,team=Green,gamemode=!spectator] at @s as @e[type=area_effect_cloud,tag=Base,sort=nearest,limit=1] as @s[tag=!GreenBase] as @a[distance=..0.01] as @e[type=area_effect_cloud,distance=..1.5,tag=Flag,tag=!taken] run tag @s add claiming
execute as @s[tag=!carrier] at @s if entity @e[type=area_effect_cloud,distance=..1.5,tag=Flag,tag=claiming] run tellraw @a[x=0] [{"selector": "@s"},{"text": " has taken a Flag!"}]
execute as @s[tag=!carrier] at @s if entity @e[type=area_effect_cloud,distance=..1.5,tag=Flag,tag=claiming] run effect give @s instant_health 1 1 true
execute as @s[tag=!carrier] at @s if entity @e[type=area_effect_cloud,distance=..1.5,tag=Flag,tag=claiming] run playsound item.book.page_turn block @a[x=0] ~ ~ ~ 1 1
execute as @s[tag=!carrier] at @s if entity @e[type=area_effect_cloud,distance=..1.5,tag=Flag,tag=claiming] run particle portal ~ ~ ~ 0 0 0 10 50
execute as @s[tag=!carrier] at @s as @e[type=area_effect_cloud,distance=..1.5,tag=Flag,tag=claiming] run tag @s add taken
execute as @s[tag=!carrier] at @s if entity @e[type=area_effect_cloud,distance=..1.5,tag=Flag,tag=claiming] run scoreboard players operation @e[type=area_effect_cloud,sort=nearest,tag=Flag,tag=claiming,limit=1] m.UUID1 = @s m.UUID1
execute as @s[tag=!carrier] at @s if entity @e[type=area_effect_cloud,distance=..1.5,tag=Flag,tag=claiming] run tag @s add carrier
execute at @s as @e[type=area_effect_cloud,distance=..1.5,tag=Flag,tag=claiming] run tag @s remove claiming
execute as @s[tag=carrier] run effect give @s glowing 1 0 true

effect give @s minecraft:haste 2 2 true
effect give @s[nbt=!{foodLevel:20}] minecraft:saturation 1 0 true

execute as @s[scores={m.deathCheck=1..1000}] at @s run tag @s remove carrier
execute as @s[scores={m.deathCheck=1..1000}] at @s as @e[tag=Flag,tag=taken] if score @s m.UUID1 = @a[sort=nearest,limit=1] m.UUID1 run tag @s remove taken
execute as @s[scores={m.deathCheck=1..1000}] at @s run scoreboard players set @s m.RespawnTimer 100
execute as @s[scores={m.deathCheck=1..1000}] at @s run function missilewars:game_modes/death

function missilewars:main/shared_run_main

execute as @s[scores={JoinSpectators=1}] run function missilewars:start/join_spectators
execute as @s[scores={JoinSpectators=1}] run scoreboard players set @s JoinSpectators 0

execute as @s[scores={JoinBlue=1}] run function missilewars:start/join/blue
execute as @s[scores={JoinBlue=1}] run scoreboard players set @s JoinBlue 0

execute as @s[scores={JoinGreen=1}] run function missilewars:start/join/green
execute as @s[scores={JoinGreen=1}] run scoreboard players set @s JoinGreen 0

execute as @s[scores={JoinRed=1}] run function missilewars:start/join/red
execute as @s[scores={JoinRed=1}] run scoreboard players set @s JoinRed 0

execute as @s[scores={JoinBlack=1}] run function missilewars:start/join/black
execute as @s[scores={JoinBlack=1}] run scoreboard players set @s JoinBlack 0

execute if block ~ ~-1 ~ crying_obsidian run effect give @s levitation 1 30 true

execute as @s[scores={Leave=1}] at @s as @e[tag=Flag,tag=taken] if score @s m.UUID1 = @a[sort=nearest,limit=1] m.UUID1 run tag @s remove taken
execute as @s[scores={Leave=1}] at @s run tag @s remove carrier
execute as @s[scores={Leave=1}] run function missilewars:end/leave
execute as @s[scores={Leave=1}] run scoreboard players set @s Leave 0