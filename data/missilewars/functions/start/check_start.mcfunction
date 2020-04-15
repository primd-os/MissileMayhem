execute if block 0 100 0 minecraft:stone_button[powered=true] positioned 0 100 0 as @a[sort=nearest,limit=1] run trigger Start

scoreboard players set StartVotes Constants 0
scoreboard players set NumPlayers Constants 0
execute as @a[scores={StartVote=1}] run scoreboard players add StartVotes Constants 1
execute as @a run scoreboard players add NumPlayers Constants 1
scoreboard players operation StartVotes Constants *= Two Constants

execute as @a store result score @s shulkerCount run clear @s shulker_box 0
execute if entity @a[scores={Start=1}] if score StartVotes Constants >= NumPlayers Constants as @a[team=!Spectator,scores={shulkerCount=2..2147483647}] run tellraw @a ["",{"text":"Cannot Start, ","color":"red"},{"selector":"@s","color":"red"},{"text":" has too many custom missiles.","color":"red"}]
execute if entity @a[scores={Start=1}] if score StartVotes Constants >= NumPlayers Constants unless entity @a[team=!Spectator] run tellraw @a {"text":"Cannot start, no players.","color":"red"}
execute if score StartVotes Constants >= NumPlayers Constants if entity @a[team=!Spectator] unless entity @a[team=!Spectator,scores={shulkerCount=2..2147483647}] run function missilewars:start/new_game
execute if score StartVotes Constants >= NumPlayers Constants if entity @a[team=!Spectator] unless entity @a[team=!Spectator,scores={shulkerCount=2..2147483647}] run scoreboard players set @s StartVote 0
execute as @a[scores={Start=1}] run scoreboard players set @s StartVote 1
execute as @a[scores={Start=1}] run scoreboard players set @s Start 0