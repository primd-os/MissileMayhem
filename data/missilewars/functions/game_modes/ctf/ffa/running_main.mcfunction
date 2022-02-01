function missilewars:game_modes/force_gamemode

tag @s add m.CurrentPlayer
execute as @s[tag=carrier] as @e[type=marker,tag=m.FFABase,x=0] if score @s m.UUID1 = @a[x=0,tag=m.CurrentPlayer,limit=1] m.UUID1 at @s positioned ~-1 ~ ~-1 as @a[dx=3,dy=1,dz=3,tag=m.CurrentPlayer] run tag @s add success
tag @s remove m.CurrentPlayer
scoreboard players add @s[tag=success] m.FFAScore 1
execute as @s[tag=success] at @s run summon minecraft:marker ~ ~ ~ {Tags: ["Flag"]}

execute as @s[tag=success] at @s as @e[tag=Flag,tag=taken,x=0] if score @s m.UUID1 = @a[sort=nearest,limit=1] m.UUID1 at @s as @e[type=marker,tag=m.FFABase,sort=nearest,limit=1] run tag @s add m.LostFlag
execute as @a[x=0] if score @s m.UUID1 = @e[type=marker,x=0,tag=m.LostFlag,limit=1] m.UUID1 run scoreboard players remove @s m.FFAScore 1
tag @e[type=marker,x=0,tag=m.LostFlag] remove m.LostFlag

execute as @s[tag=success] at @s as @e[tag=Flag,tag=taken,x=0] if score @s m.UUID1 = @a[sort=nearest,limit=1] m.UUID1 run kill @s
execute as @s[tag=success] at @s run tag @s remove carrier
execute as @s[tag=success] at @s run tellraw @a[x=0] [{"selector": "@s"},{"text": " has claimed a Flag!"}]
execute as @s[tag=success] at @s run playsound item.book.page_turn block @a[x=0] ~ ~ ~ 1
execute as @s[tag=success] at @s run particle reverse_portal ~ ~ ~ 0 0 0 10 50
tag @s remove success

execute as @s[tag=!carrier,gamemode=!spectator] at @s as @e[type=marker,tag=m.FFABase,sort=nearest,limit=1] unless score @s m.UUID1 = @a[distance=..1,sort=nearest,limit=1] m.UUID1 as @e[type=marker,distance=..1.5,tag=Flag,tag=!taken] run tag @s add claiming
execute as @s[tag=!carrier] at @s if entity @e[type=marker,distance=..1.5,tag=Flag,tag=claiming] run tellraw @a[x=0] [{"selector": "@s"},{"text": " has taken a Flag!"}]
execute as @s[tag=!carrier] at @s if entity @e[type=marker,distance=..1.5,tag=Flag,tag=claiming] at @e[type=marker,tag=Base,sort=nearest,limit=1] as @a[x=0,team=m.FFA] if score @s m.UUID1 = @e[tag=Base,sort=nearest,limit=1] m.UUID1 run tag @s remove m.PerfectCTFPossible
execute as @s[tag=!carrier] at @s if entity @e[type=marker,distance=..1.5,tag=Flag,tag=claiming] run effect give @s instant_health 1 1 true
execute as @s[tag=!carrier] at @s if entity @e[type=marker,distance=..1.5,tag=Flag,tag=claiming] run playsound item.book.page_turn block @a[x=0] ~ ~ ~ 1 1
execute as @s[tag=!carrier] at @s if entity @e[type=marker,distance=..1.5,tag=Flag,tag=claiming] run particle portal ~ ~ ~ 0 0 0 10 50
execute as @s[tag=!carrier] at @s as @e[type=marker,distance=..1.5,tag=Flag,tag=claiming] run tag @s add taken
execute as @s[tag=!carrier] at @s if entity @e[type=marker,distance=..1.5,tag=Flag,tag=claiming] run scoreboard players operation @e[type=marker,sort=nearest,tag=Flag,tag=claiming,limit=1] m.UUID1 = @s m.UUID1
execute as @s[tag=!carrier] at @s if entity @e[type=marker,distance=..1.5,tag=Flag,tag=claiming] run tag @s add carrier
execute at @s as @e[type=marker,distance=..1.5,tag=Flag,tag=claiming] run tag @s remove claiming
execute as @s[tag=carrier] run effect give @s glowing 1 0 true

execute as @s[scores={m.deathCheck=1..1000}] at @s run tag @s remove carrier
execute as @s[scores={m.deathCheck=1..1000}] at @s as @e[tag=Flag,tag=taken] if score @s m.UUID1 = @a[sort=nearest,limit=1] m.UUID1 run tag @s remove taken
execute as @s[scores={m.deathCheck=1..1000}] at @s run scoreboard players operation @s m.RespawnTimer = respawnTime m.Constants
execute as @s[scores={m.deathCheck=1..1000}] at @s run function missilewars:game_modes/death

effect give @s[predicate=missilewars:holding_wool] minecraft:haste 1 10 true
effect give @s minecraft:haste 2 2 true
effect give @s[scores={m.foodLevel=..19}] minecraft:saturation 1 0 true

function missilewars:main/shared_run_main
execute unless entity @e[type=marker,tag=GameMarker,x=0,limit=1,scores={m.GameState=2..}] if score @s m.DirectionPlace matches 1 run title @s[gamemode=!spectator] actionbar {"text": "✥"}
execute unless entity @e[type=marker,tag=GameMarker,x=0,limit=1,scores={m.GameState=2..}] if score @s m.DirectionPlace matches 0 run title @s[gamemode=!spectator] actionbar {"text": "↑"}

function missilewars:game_modes/4teams/team_join_triggers

execute if block ~ ~-1 ~ crying_obsidian run effect give @s levitation 1 30 true

execute as @s[scores={Leave=1}] at @s as @e[tag=Flag,tag=taken] if score @s m.UUID1 = @a[sort=nearest,limit=1] m.UUID1 run tag @s remove taken
execute as @s[scores={Leave=1}] at @s run tag @s remove carrier
execute as @s[scores={Leave=1}] run function missilewars:end/leave
execute as @s[scores={Leave=1}] run scoreboard players set @s Leave 0