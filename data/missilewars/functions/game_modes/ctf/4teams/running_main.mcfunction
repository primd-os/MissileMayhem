function missilewars:game_modes/force_gamemode

execute as @s[team=m.Purple,tag=carrier] at @e[type=marker,tag=PurpleBase,x=0] positioned ~ ~-20 ~-25 positioned ^ ^ ^-7 positioned ~-1 ~ ~ as @s[dx=3,dy=1,dz=50] unless entity @e[type=marker,distance=..3,tag=Flag] run tag @s add success
execute as @s[team=m.Red,tag=carrier] at @e[type=marker,tag=RedBase,x=0] positioned ~ ~-20 ~-25 positioned ^ ^ ^-7 positioned ~-1 ~ ~ as @s[dx=3,dy=1,dz=50] unless entity @e[type=marker,distance=..3,tag=Flag] run tag @s add success
execute as @s[team=m.Blue,tag=carrier] at @e[type=marker,tag=BlueBase,x=0] positioned ~-25 ~-20 ~ positioned ^ ^ ^-7 positioned ~ ~ ~-1 as @s[dx=50,dy=1,dz=3] unless entity @e[type=marker,distance=..3,tag=Flag] run tag @s add success
execute as @s[team=m.Green,tag=carrier] at @e[type=marker,tag=GreenBase,x=0] positioned ~-25 ~-20 ~ positioned ^ ^ ^-7 positioned ~ ~ ~-1 as @s[dx=50,dy=1,dz=3] unless entity @e[type=marker,distance=..3,tag=Flag] run tag @s add success
execute as @s[team=m.Red,tag=success] run scoreboard players add @e[type=marker,tag=GameMarker,x=0] m.RedScore 1
execute as @s[team=m.Purple,tag=success] run scoreboard players add @e[type=marker,tag=GameMarker,x=0] m.PurpleScore 1
execute as @s[team=m.Blue,tag=success] run scoreboard players add @e[type=marker,tag=GameMarker,x=0] m.BlueScore 1
execute as @s[team=m.Green,tag=success] run scoreboard players add @e[type=marker,tag=GameMarker,x=0] m.GreenScore 1
execute as @s[tag=success] at @s run summon minecraft:marker ~ ~ ~ {Tags: ["Flag"]}
execute as @s[tag=success] at @s as @e[tag=Flag,tag=taken] if score @s m.UUID1 = @a[sort=nearest,limit=1] m.UUID1 at @s positioned 0 ~ 0 unless entity @s[distance=..1] at @s as @e[type=marker,tag=Base,sort=nearest,limit=1] run function missilewars:game_modes/ctf/remove_flag
execute as @s[tag=success] at @s as @e[tag=Flag,tag=taken] if score @s m.UUID1 = @a[sort=nearest,limit=1] m.UUID1 run kill @s
execute as @s[tag=success] at @s run tag @s remove carrier
execute as @s[tag=success] at @s run tellraw @a[x=0] [{"selector": "@s"},{"text": " has claimed a Flag!"}]
execute as @s[tag=success] at @s run playsound item.book.page_turn block @a[x=0] ~ ~ ~ 1
execute as @s[tag=success] at @s run particle reverse_portal ~ ~ ~ 0 0 0 10 50
tag @s remove success

execute as @s[tag=!carrier,team=m.Purple,gamemode=!spectator] at @s as @e[type=marker,tag=Base,sort=nearest,limit=1] as @s[tag=!PurpleBase] as @a[distance=..0.01] as @e[type=marker,distance=..1.5,tag=Flag,tag=!taken] run tag @s add claiming
execute as @s[tag=!carrier,team=m.Blue,gamemode=!spectator] at @s as @e[type=marker,tag=Base,sort=nearest,limit=1] as @s[tag=!BlueBase] as @a[distance=..0.01] as @e[type=marker,distance=..1.5,tag=Flag,tag=!taken] run tag @s add claiming
execute as @s[tag=!carrier,team=m.Red,gamemode=!spectator] at @s as @e[type=marker,tag=Base,sort=nearest,limit=1] as @s[tag=!RedBase] as @a[distance=..0.01] as @e[type=marker,distance=..1.5,tag=Flag,tag=!taken] run tag @s add claiming
execute as @s[tag=!carrier,team=m.Green,gamemode=!spectator] at @s as @e[type=marker,tag=Base,sort=nearest,limit=1] as @s[tag=!GreenBase] as @a[distance=..0.01] as @e[type=marker,distance=..1.5,tag=Flag,tag=!taken] run tag @s add claiming
execute as @s[tag=!carrier] at @s if entity @e[type=marker,distance=..1.5,tag=Flag,tag=claiming] run tellraw @a[x=0] [{"selector": "@s"},{"text": " has taken a Flag!"}]
execute as @s[tag=!carrier] at @s if entity @e[type=marker,distance=..1.5,tag=Flag,tag=claiming] run tag @e[type=marker,tag=Base,sort=nearest,limit=1] remove m.PerfectCTFPossible
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

execute at @e[type=marker,tag=Base,x=0] run particle minecraft:angry_villager ^85 ^75 ^-10 20 50 20 1 20 force
execute at @e[type=marker,tag=Base,x=0] positioned ^85 ^ ^-10 positioned ~-50 0 ~-50 as @s[dx=100,dy=255,dz=100] run tag @s add InDamage
effect give @s[tag=InDamage,gamemode=survival] wither 1 4
effect give @s[tag=InDamage,gamemode=survival] hunger 1 4
effect give @s[predicate=missilewars:holding_wool] minecraft:haste 1 10 true
effect give @s[tag=!InDamage] minecraft:haste 2 2 true
effect give @s[tag=!InDamage,scores={m.foodLevel=..19}] minecraft:saturation 1 0 true
tag @s remove InDamage

function missilewars:main/shared_run_main
execute unless entity @e[type=marker,tag=GameMarker,x=0,limit=1,scores={m.GameState=2..}] if score @s m.DirectionPlace matches 1 run title @s[gamemode=!spectator] actionbar {"text": "✥"}
execute unless entity @e[type=marker,tag=GameMarker,x=0,limit=1,scores={m.GameState=2..}] if score @s m.DirectionPlace matches 0 run title @s[gamemode=!spectator] actionbar {"text": "↑"}

function missilewars:game_modes/4teams/team_join_triggers

execute if block ~ ~-1 ~ crying_obsidian run effect give @s levitation 1 30 true

execute as @s[scores={Leave=1}] at @s as @e[tag=Flag,tag=taken] if score @s m.UUID1 = @a[sort=nearest,limit=1] m.UUID1 run tag @s remove taken
execute as @s[scores={Leave=1}] at @s run tag @s remove carrier
execute as @s[scores={Leave=1}] run function missilewars:end/leave
execute as @s[scores={Leave=1}] run scoreboard players set @s Leave 0