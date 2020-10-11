execute as @a[x=0] if score @s m.tpValue = @a[distance=..0.001,limit=1] TPA run tag @s add Requested
tellraw @a[tag=Requested] [{"selector": "@s"},{"text": " wants to teleport to you. Use \"/trigger TPAccept\" to accept."}]
scoreboard players operation @a[tag=Requested] m.tpaccValue = @s tpValue
tag @s remove tpReady
scoreboard players set @s TPA 0