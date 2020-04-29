scoreboard players set StartVotes Constants 0
scoreboard players set NumPlayers Constants 0
execute as @a[scores={StartVote=1}] run scoreboard players add StartVotes Constants 1
execute as @a run scoreboard players add NumPlayers Constants 1
scoreboard players operation StartVotes Constants *= Two Constants

execute as @a[scores={Start=1}] run tellraw @a ["",{"selector":"@s"},{"text":" is Ready!","color":"green"}]
execute as @a[scores={Start=1}] at @s run playsound minecraft:entity.experience_orb.pickup block @a ~ ~ ~ 1
execute as @a store result score @s shulkerCount run clear @s shulker_box 0
execute if entity @a[scores={Start=1}] if score StartVotes Constants > NumPlayers Constants as @a[team=!Spectator,scores={shulkerCount=2..2147483647}] run tellraw @a ["",{"text":"Cannot Start, ","color":"red"},{"selector":"@s","color":"red"},{"text":" has too many custom missiles.","color":"red"}]
execute if entity @a[scores={Start=1}] if score StartVotes Constants > NumPlayers Constants unless entity @a[team=!Spectator] run tellraw @a {"text":"Cannot start, no players.","color":"red"}
execute if score StartVotes Constants > NumPlayers Constants if entity @a[team=!Spectator] unless entity @a[team=!Spectator,scores={shulkerCount=2..2147483647}] run playsound minecraft:block.anvil.land master @a ~ ~ ~ 0.5
execute if score StartVotes Constants > NumPlayers Constants if entity @a[team=!Spectator] unless entity @a[team=!Spectator,scores={shulkerCount=2..2147483647}] run function missilewars:start/new_game
execute as @a[scores={Start=1}] run scoreboard players set @s StartVote 1
execute as @a[scores={Start=1}] run scoreboard players set @s Start 0