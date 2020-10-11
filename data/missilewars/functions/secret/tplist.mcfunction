execute as @a[x=0] unless entity @s[scores={m.tpValue=-2147483648..2147483647}] run function missilewars:secret/assigntp
tellraw @a {"text": "Use \"/trigger TPA set #\" to request to teleport where # is the number next to their name in the following list."}
execute as @a[x=0] run tellraw @a[distance=..0.01] [{"selector": "@s"},{"text": " - "},{"score": {"name": "@s","objective": "tpValue"}}]
tag @s add tpReady
scoreboard players set @s TPA 0