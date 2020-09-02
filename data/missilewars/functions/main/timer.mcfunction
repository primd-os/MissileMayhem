execute as @e[tag=BlueBase,x=0] run scoreboard players remove @s Timer 1
execute as @e[tag=BlueBase,x=0] run scoreboard players operation @s TimerSecs = @s Timer
execute as @e[tag=BlueBase,x=0] run scoreboard players operation @s TimerTick = @s Timer
execute as @e[tag=BlueBase,x=0] run scoreboard players operation @s TimerSecs /= Twenty Constants
execute as @e[tag=BlueBase,x=0] run scoreboard players operation @s TimerTick %= Twenty Constants
execute as @e[tag=BlueBase,x=0,scores={TimerTick=0}] if score @s Timer matches 1..2147483647 run tellraw @a[x=0] ["",{"text":"Game Starting in "},{"score":{"name":"@e[tag=BlueBase,x=0]","objective":"TimerSecs"}}]
execute as @e[tag=BlueBase,x=0,scores={TimerTick=0}] if score @s Timer matches 1..2147483647 run playsound minecraft:block.note_block.chime block @a[x=0] ~ ~ ~ 0.5 2 1
execute as @e[tag=BlueBase,x=0,scores={Timer=0},limit=1] run tellraw @a[x=0] {"text": "Game Started"}
execute as @e[tag=BlueBase,x=0,scores={Timer=0},limit=1] at @s run scoreboard players set @s GameState 1
execute as @e[tag=BlueBase,x=0,scores={Timer=0},limit=1] at @s run playsound minecraft:block.note_block.bit block @a[x=0] ~ ~ ~ 1 2 1
execute as @e[tag=BlueBase,x=0,scores={Timer=0}] at @s run clear @a[x=0] magenta_wool
execute as @e[tag=BlueBase,x=0,scores={Timer=0}] run function missilewars:new_missile/new_missile
execute as @e[tag=BlueBase,x=0,scores={Timer=0}] run function missilewars:new_missile/new_missile
execute as @e[tag=BlueBase,x=0,scores={Timer=0}] run function missilewars:new_missile/new_missile
execute as @e[tag=BlueBase,x=0,scores={Timer=0}] run function missilewars:new_missile/new_missile
execute as @e[tag=BlueBase,x=0,scores={Timer=0}] run function missilewars:new_missile/new_missile